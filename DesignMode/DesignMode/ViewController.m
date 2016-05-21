//
//  ViewController.m
//  DesignMode
//
//  Created by zhangdong on 15/5/12.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

//
/**
 *  本次学习参考
 *
 *  http://blog.csdn.net/column/details/designpatternforios.html
 *  http://blog.csdn.net/developer_zhang/article/details/19965939
 *
 *  学习目的：提高软件系统的“可复用性”和“可扩展性”
 *
 */

#import "ViewController.h"

// 简单工厂
#import "OperationFactory.h"

//// 抽象工厂
#import "ComputerEngineer.h"
#import "FactoryBase.h"
#import "IntelFactory.h"
#import "AMDFactory.h"

// 委托模式
#import "Philosopher.h"
#import "PhiDelegate.h"

// 原型模式
#import "Person.h"

// 建造者模式
#import "Shop.h"
#import "VehicleBuilder.h"
#import "MotorCycleBuilder.h"
#import "CarBuilder.h"
#import "ScooterBuilder.h"
#import "Vehicle.h"

#import "CharacterBuilder.h"
#import "StandardCharacterBuilder.h"
#import "ChasingGame.h"
#import "Character.h"

// 桥接模式
#import "GameBoyEmulator.h"
#import "GameGearEmulator.h"
#import "ConsoleController.h"
#import "TouchConsoleController.h"

// 外观模式
#import "CarDriver.h"

// 观察者模式
#import "ConcreteObserver.h"
#import "ConcreteSubject.h"
#import "Student.h"

// 访问者模式
#import "NimoEngine.h"
#import "NimoWheel.h"
#import "NimoCar.h"
#import "NimoComponentUpgrade.h"

// 装饰模式
#import "DecoratorViewController.h"

// 责任链模式
#import "ChainofResponsibility.h"

// 模板方法模式
#import "TemplateMethod.h"

// 策略模式
#import "StrategyViewController.h"
#import "StrategyVC.h"

@interface ViewController ()

@property (nonatomic, strong) Student *student;
@property (nonatomic, strong) NSString *testString;

@end

@implementation ViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"主页 viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"主页 viewDidAppear");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"主页 viewDidLoad");
    self.navigationItem.title = @"设计模式";
    
//    [self textSipmleFactory];// 简单工厂
    
//    [self testABSFactory]; // 抽象工厂
    
//    [self testDelegate]; // 代理
    
//    [self testPrototype]; // 原型模式
    
//    [self testBuilder]; // 建造者模式
//    [self testBuilder_2];
    
//    [self testBridge]; //桥接模式
    
//    [self testGuise]; //外观模式
    
//    [self testObserver]; // 观察者模式
//    [self testKVO]; // KVO
    
//    [self testVisitor]; //访问者模式
    
//    [self testDecorator]; // 装饰模式

//    [self testChainOfResponsibility]; // 责任链模式
    

}

/**
 *  1 简单工厂模式的调用
 */
- (void)textSipmleFactory
{
    NSString* strFirstNum = @"5";
    NSString* strSecondNum = @"4";
    Operation* oper;
    oper = [OperationFactory createOperate:@"+"];
    oper.firstNum = [strFirstNum doubleValue];
    oper.secondNum = [strSecondNum doubleValue];
    NSString *result = [NSString stringWithFormat:@"%f",[oper getResult]];
    NSLog(@"简单工厂模式的调用结果：%@", result);
}

/**
 *  2 抽象工厂模式
 */
- (void)testABSFactory
{
    
    //创建装机工程师对象
    ComputerEngineer* cf = [[ComputerEngineer alloc] init];
    //客户选择并创建需要使用的产品对象
    FactoryBase* af = [[IntelFactory alloc] init];
    //    FactoryBase* af = [[AMDFactory alloc] init];
    //告诉装机工程师自己选择的产品，让装机工程师组装电脑
    [cf makeComputer:af];
}

/**
 *  3 委托模式
 */
- (void)testDelegate
{
    /**
     这个地方可以反观一下 系统的 main.m 和 AppDelegate 的实现
     
     我的理解：
     程序启动的时候，唯一的入口是这个 main.m 里的main函数，调用了这个方法
     UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class])
     推测：是把[AppDelegate class]这个类名作为参数，传入了Application中，然后在里面进行了实例化，设置成了
     AppLication 的代理。
     
     可能就像下面的 方法
     - (instancetype)initWithDelegateClassName:(NSString *)delegateName
     
     */
    
    /**
     使用代理还要注意避免产生循环引用问题
     */
    
    /**
     感悟
     
     类名作为参数，这个知识点确实需要记住
     */
    Philosopher *ph = [[Philosopher alloc] initWithDelegateClassName:NSStringFromClass([PhiDelegate class])];
    [ph start];
}

/**
 *  4 原型模式
 */

- (void)testPrototype
{
//    NSString *str = @"zhangdong";
    NSMutableString *str = [NSMutableString stringWithString:@"zhangdong"];
    NSString *copy = [str copy];
    NSString *mCopy = [str mutableCopy];
    
    NSLog(@"str对象：%@， 地址：%p", str, str);
    NSLog(@"copy对象：%@， 地址：%p", copy, copy);
    NSLog(@"mCopy对象：%@， 地址：%p", mCopy, mCopy);
    NSLog(@"\n");
    /**
     *  copy 与 mutableCopy 方法区别只在于那些有可变对象和不可变对象之分的对象上
     *  [不可变对象 copy] 浅拷贝 等价与[不可变对象 retain]
     *  [不可变对象 mutableCopy] 深拷贝
     */
    /**
     *  使用 mutableCopy 都是 深拷贝
     *  [可变对象 copy] 深拷贝
     *  [不可变对象 copy] 浅拷贝
     */
    
    NSMutableString *string = [NSMutableString stringWithString:@"origion"];
    NSString *stringCopy = [string copy];
    NSMutableString *mStringCopy = [string copy];
    NSMutableString *stringMCopy = [string mutableCopy];
    [string appendString:@"haha"];
//    [mStringCopy appendString:@"hahha"];// crash
    [stringMCopy appendString:@"hahhah"];
    
    /**
     *  copy 得到的对象是不可变的 无论之前是否可变
     *  mutableCopy 得到的对象是可变的 无论之前是否可变
     */
    
    
    
    NSMutableString *name = [NSMutableString stringWithString:@"zhangdong"];
    NSString *sex = @"男";
    Person *person = [[Person alloc] initWithName:name andSex:sex andAge:24];
    Person *copyPeron = [person copy];
    Person *mCopyPeron = [person mutableCopy];
    
    [name appendString:@"wenwen"];// 通过它验证 字符串属性中 retain还是copy 的区别
    /**
     *  如果Person 的name是 retain， 则此处name和person对象的name执行的是同一个字符串，此处name修改后，会导致person的name也被修改
     *  如果使用的是 copy ，就不会修改person的名字
     */
    
    NSLog(@"person.name：%@，地址：%p", person.name, person.name);
    NSLog(@"copyPeron.name：%@，地址：%p", copyPeron.name, copyPeron.name);
    NSLog(@"mCopyPeron.name：%@，地址：%p", mCopyPeron.name, mCopyPeron.name);
    NSLog(@"\n");

    
    sex = @"男nan";
    NSLog(@"person.sex：%@，地址：%p", person.sex, person.sex);
    NSLog(@"copyPeron.sex：%@，地址：%p", copyPeron.sex, copyPeron.sex);
    NSLog(@"mCopyPeron.sex：%@，地址：%p", mCopyPeron.sex, mCopyPeron.sex);
    
    /**
     *  对于容器类 copy 拷贝指针，mutableCopy 拷贝内存
     *  但是对于 容器中的元素 都是拷贝指针 浅拷贝
     */
    NSArray *array = [NSArray arrayWithObject:str];
    NSArray *copyArray = [array mutableCopy];

    NSLog(@"array:%@, 地址：%p, 内容地址：%p", array, array, [array objectAtIndex:0]);
    NSLog(@"copyArray:%@, 地址：%p, 内容地址：%p", copyArray, copyArray, [array objectAtIndex:0]);
    
    
}

/**
 *  建造者模式 ps：感觉没搞对！！！
 */
- (void)testBuilder
{
    VehicleBuilder *builder = [[MotorCycleBuilder alloc] init];
    Shop *director = [[Shop alloc] init];
    
    Vehicle *product = [director construct:builder];
    [product show];
}

- (void)testBuilder_2
{
    CharacterBuilder *characterBuilder = [[StandardCharacterBuilder alloc] init];
    ChasingGame *game = [[ChasingGame alloc] init];
    Character *player = [game createPlayer:characterBuilder];
    Character *enemy = [game createEnemy:characterBuilder];
    
    // 使用这两个角色
    [player play];
    [enemy play];
}

/**
 *  桥接模式
 */
- (void)testBridge
{
    TouchConsoleController *controller = [[TouchConsoleController alloc] init];
    ConsoleEmulator *boyEmulator = [[GameBoyEmulator alloc] init];
//    ConsoleEmulator *gearEmulator = [[GameGearEmulator alloc] init];
    
    controller.emulator = boyEmulator;
    [controller up];
    [controller down];
    [controller left];
    [controller right];
    // 。。。。
}

/**
 *  外观模式
 */
- (void)testGuise
{
    // CarDriver 作为 车与乘客 之间的唯一接口
    // 客户端 说去青岛  drive 就开车去，至于 挂档，踩油门，客户端不必要知道
    CarDriver *driver = [[CarDriver alloc] init];
    [driver driveToLocation:CGPointMake(30, 100)];
}

/**
 *  观察者模式
 */
- (void)testObserver
{
    ConcreteObserver *observer = [[ConcreteObserver alloc] init];
    ConcreteSubject *subject = [ConcreteSubject shareConcreteSubject];
    [subject attach:(Observer *)observer];
    [subject notifyObservers];
    [subject detach:(Observer *)observer];
}
- (void)testKVO
{
   _student = [[Student alloc] init];
    
    [_student addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    _student.name = @"zhangdong";
    [_student setValue:@"wenwen" forKey:@"name"];
    
}
- (void)dealloc
{
    
    [_student removeObserver:self forKeyPath:@"name"];
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    
    if (object == _student && [keyPath isEqualToString:@"name"])
    {
        NSLog(@"\nkeyPaht%@ \nobject%@ \nchange%@ \ncontext%@", keyPath, object, change, context);
    }
    else
    {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

// 访问者模式Visitor
- (void)testVisitor
{
    NimoCar *car = [[NimoCar alloc] init];
    NimoEngine *engine = [[NimoEngine alloc] initWithModelName:@"V8"];
    NimoWheel *wheelA = [[NimoWheel alloc] init];
    NimoWheel *wheelB = [[NimoWheel alloc] init];
    NimoWheel *wheelC = [[NimoWheel alloc] init];
    NimoWheel *wheelD = [[NimoWheel alloc] init];
    
    car.engine = engine;
    [car addWheel:wheelA atIndex:0];
    [car addWheel:wheelB atIndex:1];
    [car addWheel:wheelC atIndex:2];
    [car addWheel:wheelD atIndex:3];
    
    NSLog(@"%@", car);
    
    NimoComponentUpgrade *upgradeVisitor = [[NimoComponentUpgrade alloc] init];
    [car acceptComponentVisitor:upgradeVisitor];
    
}

/**
 *  装饰模式
 */
- (void)testDecorator
{
    DecoratorViewController *vc = [[DecoratorViewController alloc] init];
    [self addChildViewController:vc];
    [self.view addSubview:vc.view];
    [vc.view setFrame:self.view.bounds];
//    [vc didMoveToParentViewController:self];
    self.view.backgroundColor = [UIColor whiteColor];
}

/**
 *  责任链模式
 */
- (IBAction)testChainOfResponsibility:(id)sender
{
    // 责任链模式Demo
    ChainofResponsibility *demo = [[ChainofResponsibility alloc] init];
    [demo demoOfChainofResponsibility];
}

/**
 *  模板方法模式
 */
- (IBAction)testTemplateMethod:(id)sender
{
    TemplateMethod *demo = [[TemplateMethod alloc] init];
    
    [demo demoTemplateMethod];
}

/**
 *  策略模式
 */
- (IBAction)testStrategy:(id)sender
{
    StrategyViewController *strategyVC = [[StrategyViewController alloc] initWithNibName:@"StrategyViewController" bundle:nil];
    [self.navigationController pushViewController:strategyVC animated:YES];
}
@end
