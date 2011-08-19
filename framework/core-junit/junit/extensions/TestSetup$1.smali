.class Ljunit/extensions/TestSetup$1;
.super Ljava/lang/Object;
.source "TestSetup.java"

# interfaces
.implements Ljunit/framework/Protectable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/extensions/TestSetup;->run(Ljunit/framework/TestResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljunit/extensions/TestSetup;

.field final synthetic val$result:Ljunit/framework/TestResult;


# direct methods
.method constructor <init>(Ljunit/extensions/TestSetup;Ljunit/framework/TestResult;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    iput-object p2, p0, Ljunit/extensions/TestSetup$1;->val$result:Ljunit/framework/TestResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public protect()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    invoke-virtual {v0}, Ljunit/extensions/TestSetup;->setUp()V

    .line 19
    iget-object v0, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    iget-object v1, p0, Ljunit/extensions/TestSetup$1;->val$result:Ljunit/framework/TestResult;

    invoke-virtual {v0, v1}, Ljunit/extensions/TestSetup;->basicRun(Ljunit/framework/TestResult;)V

    .line 20
    iget-object v0, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    invoke-virtual {v0}, Ljunit/extensions/TestSetup;->tearDown()V

    .line 21
    return-void
.end method
