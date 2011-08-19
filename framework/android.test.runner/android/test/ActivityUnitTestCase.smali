.class public abstract Landroid/test/ActivityUnitTestCase;
.super Landroid/test/ActivityTestCase;
.source "ActivityUnitTestCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/ActivityUnitTestCase$1;,
        Landroid/test/ActivityUnitTestCase$MockParent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation


# instance fields
.field private mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mActivityContext:Landroid/content/Context;

.field private mApplication:Landroid/app/Application;

.field private mAttached:Z

.field private mCreated:Z

.field private mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;


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
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    .local p1, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    .line 82
    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    .line 83
    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    .line 86
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    .line 87
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
    .line 91
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getFinishedActivityRequest()I
    .registers 2

    .prologue
    .line 251
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_9

    .line 252
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    .line 254
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getRequestedOrientation()I
    .registers 2

    .prologue
    .line 200
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_9

    .line 201
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    .line 203
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getStartedActivityIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 213
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_9

    .line 214
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    .line 216
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getStartedActivityRequest()I
    .registers 2

    .prologue
    .line 225
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    .line 228
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isFinishCalled()Z
    .registers 2

    .prologue
    .line 239
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_9

    .line 240
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget-boolean v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 242
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setActivityContext(Landroid/content/Context;)V
    .registers 2
    .parameter "activityContext"

    .prologue
    .line 192
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    .line 193
    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .registers 2
    .parameter "application"

    .prologue
    .line 183
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    .line 184
    return-void
.end method

.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    .line 99
    invoke-virtual {p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method protected startActivity(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 22
    .parameter "intent"
    .parameter "savedInstanceState"
    .parameter "lastNonConfigurationInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    const-string v3, "Activity already created"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    move v4, v0

    invoke-static {v3, v4}, Landroid/test/ActivityUnitTestCase;->assertFalse(Ljava/lang/String;Z)V

    .line 126
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    move v3, v0

    if-nez v3, :cond_a0

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    move-object v3, v0

    invoke-static {v3}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 128
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    .line 129
    const/16 v16, 0x0

    .line 131
    .local v16, newActivity:Landroid/app/Activity;,"TT;"
    const/4 v6, 0x0

    .line 132
    .local v6, token:Landroid/os/IBinder;
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    move-object v3, v0

    if-nez v3, :cond_35

    .line 133
    new-instance v3, Landroid/test/mock/MockApplication;

    invoke-direct {v3}, Landroid/test/mock/MockApplication;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/test/ActivityUnitTestCase;->setApplication(Landroid/app/Application;)V

    .line 135
    :cond_35
    new-instance v14, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v14, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    new-instance v9, Landroid/content/pm/ActivityInfo;

    invoke-direct {v9}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 139
    .local v9, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 140
    .local v10, title:Ljava/lang/CharSequence;
    new-instance v3, Landroid/test/ActivityUnitTestCase$MockParent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/test/ActivityUnitTestCase$MockParent;-><init>(Landroid/test/ActivityUnitTestCase$1;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    .line 141
    const/4 v12, 0x0

    .line 143
    .local v12, id:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    move-object v11, v0

    move-object/from16 v8, p1

    move-object/from16 v13, p3

    invoke-virtual/range {v3 .. v13}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_8f} :catch_bc

    move-result-object v16

    .line 150
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #title:Ljava/lang/CharSequence;
    .end local v12           #id:Ljava/lang/String;
    .end local v14           #cn:Landroid/content/ComponentName;
    :goto_90
    invoke-static/range {v16 .. v16}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    .line 153
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    .line 156
    .end local v6           #token:Landroid/os/IBinder;
    .end local v16           #newActivity:Landroid/app/Activity;,"TT;"
    :cond_a0
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 157
    .local v17, result:Landroid/app/Activity;,"TT;"
    if-eqz v17, :cond_bb

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 159
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    .line 161
    :cond_bb
    return-object v17

    .line 146
    .end local v17           #result:Landroid/app/Activity;,"TT;"
    .restart local v6       #token:Landroid/os/IBinder;
    .restart local v16       #newActivity:Landroid/app/Activity;,"TT;"
    :catch_bc
    move-exception v3

    move-object v15, v3

    .line 147
    .local v15, e:Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_90
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Landroid/test/ActivityUnitTestCase;,"Landroid/test/ActivityUnitTestCase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    .line 172
    const-class v0, Landroid/test/ActivityInstrumentationTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ActivityUnitTestCase;->scrubClass(Ljava/lang/Class;)V

    .line 174
    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    .line 175
    return-void
.end method
