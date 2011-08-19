.class public abstract Landroid/test/SingleLaunchActivityTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "SingleLaunchActivityTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/InstrumentationTestCase;"
    }
.end annotation


# static fields
.field private static sActivity:Landroid/app/Activity;

.field private static sActivityLaunchedFlag:Z

.field private static sTestCaseCounter:I


# instance fields
.field mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    .line 37
    sput-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    return-void
.end method

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
    .line 47
    .local p0, this:Landroid/test/SingleLaunchActivityTestCase;,"Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    .local p2, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/test/SingleLaunchActivityTestCase;->mPackage:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/test/SingleLaunchActivityTestCase;->mActivityClass:Ljava/lang/Class;

    .line 50
    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    .line 51
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
    .line 59
    .local p0, this:Landroid/test/SingleLaunchActivityTestCase;,"Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    sget-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

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
    .line 64
    .local p0, this:Landroid/test/SingleLaunchActivityTestCase;,"Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    .line 66
    sget-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    if-nez v0, :cond_1d

    .line 68
    invoke-virtual {p0}, Landroid/test/SingleLaunchActivityTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 69
    iget-object v0, p0, Landroid/test/SingleLaunchActivityTestCase;->mPackage:Ljava/lang/String;

    iget-object v1, p0, Landroid/test/SingleLaunchActivityTestCase;->mActivityClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/test/SingleLaunchActivityTestCase;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    .line 72
    :cond_1d
    return-void
.end method

.method protected tearDown()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Landroid/test/SingleLaunchActivityTestCase;,"Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    .line 78
    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    if-nez v0, :cond_f

    .line 79
    sget-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 81
    :cond_f
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->tearDown()V

    .line 82
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
    .line 85
    .local p0, this:Landroid/test/SingleLaunchActivityTestCase;,"Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    const-string v0, "activity should be launched successfully"

    sget-object v1, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Landroid/test/SingleLaunchActivityTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method
