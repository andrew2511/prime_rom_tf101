.class public abstract Landroid/test/ActivityInstrumentationTestCase2;
.super Landroid/test/ActivityTestCase;
.source "ActivityInstrumentationTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
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

.field mActivityIntent:Landroid/content/Intent;

.field mInitialTouchMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    .local p1, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    .line 68
    iput-object p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    .local p2, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Landroid/test/ActivityInstrumentationTestCase2;-><init>(Ljava/lang/Class;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_29

    .line 94
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    iget-boolean v3, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 95
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, targetPackage:Ljava/lang/String;
    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    if-nez v2, :cond_2a

    .line 98
    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/test/ActivityInstrumentationTestCase2;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v0

    .line 102
    :goto_26
    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase2;->setActivity(Landroid/app/Activity;)V

    .line 104
    .end local v1           #targetPackage:Ljava/lang/String;
    :cond_29
    return-object v0

    .line 100
    .restart local v1       #targetPackage:Ljava/lang/String;
    :cond_2a
    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    iget-object v3, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2, v3}, Landroid/test/ActivityInstrumentationTestCase2;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_26
.end method

.method protected runTest()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 180
    .local v0, method:Ljava/lang/reflect/Method;
    const-class v1, Landroid/test/UiThreadTest;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 181
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getActivity()Landroid/app/Activity;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1e

    .line 186
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_1a
    :goto_1a
    invoke-super {p0}, Landroid/test/ActivityTestCase;->runTest()V

    .line 187
    return-void

    .line 183
    :catch_1e
    move-exception v1

    goto :goto_1a
.end method

.method public setActivityInitialTouchMode(Z)V
    .registers 2
    .parameter "initialTouchMode"

    .prologue
    .line 143
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    iput-boolean p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    .line 144
    return-void
.end method

.method public setActivityIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "i"

    .prologue
    .line 126
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    .line 127
    return-void
.end method

.method protected setUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, mInitialTouchMode:Z
    const/4 v0, 0x0

    .line 152
    .local v0, mActivityIntent:Landroid/content/Intent;
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
    .line 157
    .local p0, this:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_d

    .line 159
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase2;->setActivity(Landroid/app/Activity;)V

    .line 166
    :cond_d
    const-class v1, Landroid/test/ActivityInstrumentationTestCase2;

    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase2;->scrubClass(Ljava/lang/Class;)V

    .line 168
    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    .line 169
    return-void
.end method
