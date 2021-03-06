##### BridgePattern 桥接模式

桥接模式：
把抽象层次结构从实现中分离出来，使其能够独立变更。


桥接模式的目的
抽象层定义了供客户端使用的上层抽象接口。
实现层次结构定义了供抽象层次使用的底层接口。
实现类的引用被封装于抽象层的实例中时，桥接就形成了。

桥接模式的好处：
客户端的使用调用抽象层接口，实现类实现的是实现层的接口。
抽象层接口和实现层接口可以根据需要独立变更，而互补影响。


**桥接模式的使用场景**

- 不想在抽象与其实现之间形成固定的绑定关系
- 抽象与实现之间都可以通过子类化独立进行扩展
- 想在带有不同抽象接口的多个对象之间共享一个实现
