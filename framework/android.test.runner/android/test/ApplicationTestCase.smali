.class public abstract Landroid/test/ApplicationTestCase;
.super Landroid/test/AndroidTestCase;
.source "ApplicationTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Application;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mApplicationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mAttached:Z

.field private mCreated:Z

.field private mSystemContext:Landroid/content/Context;


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
    .local p0, this:Landroid/test/ApplicationTestCase;,"Landroid/test/ApplicationTestCase<TT;>;"
    .local p1, applicationClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 72
    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    .line 73
    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    .line 68
    iput-object p1, p0, Landroid/test/ApplicationTestCase;->mApplicationClass:Ljava/lang/Class;

    .line 69
    return-void
.end method

.method private setupApplication()V
    .registers 4

    .prologue
    .line 98
    .local p0, this:Landroid/test/ApplicationTestCase;,"Landroid/test/ApplicationTestCase<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    .line 100
    :try_start_3
    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplicationClass:Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_13

    .line 104
    :goto_f
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    .line 105
    return-void

    .line 101
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_f
.end method


# virtual methods
.method protected final createApplication()V
    .registers 2

    .prologue
    .line 115
    .local p0, this:Landroid/test/ApplicationTestCase;,"Landroid/test/ApplicationTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    invoke-static {v0}, Landroid/test/ApplicationTestCase;->assertFalse(Z)V

    .line 117
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    if-nez v0, :cond_c

    .line 118
    invoke-direct {p0}, Landroid/test/ApplicationTestCase;->setupApplication()V

    .line 120
    :cond_c
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    .line 124
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Landroid/test/ApplicationTestCase;,"Landroid/test/ApplicationTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getSystemContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 165
    .local p0, this:Landroid/test/ApplicationTestCase;,"Landroid/test/ApplicationTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method

.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Landroid/test/ApplicationTestCase;,"Landroid/test/ApplicationTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 91
    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mSystemContext:Landroid/content/Context;

    .line 92
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
    .line 147
    .local p0, this:Landroid/test/ApplicationTestCase;,"Landroid/test/ApplicationTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->terminateApplication()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    .line 153
    const-class v0, Landroid/test/ApplicationTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ApplicationTestCase;->scrubClass(Ljava/lang/Class;)V

    .line 155
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 156
    return-void
.end method

.method protected final terminateApplication()V
    .registers 2

    .prologue
    .line 132
    .local p0, this:Landroid/test/ApplicationTestCase;,"Landroid/test/ApplicationTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 135
    :cond_9
    return-void
.end method

.method public final testApplicationTestCaseSetUpProperly()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Landroid/test/ApplicationTestCase;,"Landroid/test/ApplicationTestCase<TT;>;"
    invoke-direct {p0}, Landroid/test/ApplicationTestCase;->setupApplication()V

    .line 175
    const-string v0, "Application class could not be instantiated successfully"

    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v0, v1}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    return-void
.end method
