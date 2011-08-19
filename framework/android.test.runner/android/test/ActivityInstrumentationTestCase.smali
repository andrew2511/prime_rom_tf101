.class public abstract Landroid/test/ActivityInstrumentationTestCase;
.super Landroid/test/ActivityTestCase;
.source "ActivityInstrumentationTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mInitialTouchMode:Z

.field mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .parameter "pkg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase;,"Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    .local p2, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/test/ActivityInstrumentationTestCase;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .registers 5
    .parameter "pkg"
    .parameter
    .parameter "initialTouchMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase;,"Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    .local p2, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase;->mInitialTouchMode:Z

    .line 63
    iput-object p2, p0, Landroid/test/ActivityInstrumentationTestCase;->mActivityClass:Ljava/lang/Class;

    .line 64
    iput-boolean p3, p0, Landroid/test/ActivityInstrumentationTestCase;->mInitialTouchMode:Z

    .line 65
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase;,"Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected setUp()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase;,"Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    .line 76
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    iget-boolean v2, p0, Landroid/test/ActivityInstrumentationTestCase;->mInitialTouchMode:Z

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 77
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, targetPackageName:Ljava/lang/String;
    iget-object v1, p0, Landroid/test/ActivityInstrumentationTestCase;->mActivityClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/test/ActivityInstrumentationTestCase;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase;->setActivity(Landroid/app/Activity;)V

    .line 79
    return-void
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase;,"Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase;->setActivity(Landroid/app/Activity;)V

    .line 89
    const-class v0, Landroid/test/ActivityInstrumentationTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase;->scrubClass(Ljava/lang/Class;)V

    .line 91
    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    .line 92
    return-void
.end method

.method public testActivityTestCaseSetUpProperly()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase;,"Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    const-string v0, "activity should be launched successfully"

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/test/ActivityInstrumentationTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-void
.end method
