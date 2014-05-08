#ExecOnce
Execute a block once per version in your iOS app easily. ;)


#### How It Works
It is very simple:
    
    [LMExecOnce execute:^{
        NSLog(@"Called!");
    } version:1.0];
    
    [LMExecOnce execute:^{
        NSLog(@"Called!");
    } version:1.1];


#### Remember
1. LMExecOnce does not consider the app version in Info.plist. It considers the latest block's version.
2. **Order matters.** If you code the example as it is wrote, then LMExecOnce will call both blocks. But if you run them in the oposite order, LMExecOnce will execute only the first block (this will happen because the version 1.1 is over 1.0).
