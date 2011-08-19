.class Landroid/test/ActivityUnitTestCase$MockParent;
.super Landroid/app/Activity;
.source "ActivityUnitTestCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/ActivityUnitTestCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockParent"
.end annotation


# instance fields
.field public mFinished:Z

.field public mFinishedActivityRequest:I

.field public mRequestedOrientation:I

.field public mStartedActivityIntent:Landroid/content/Intent;

.field public mStartedActivityRequest:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 270
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 272
    iput v2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    .line 274
    iput v1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    .line 275
    iput-boolean v2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 276
    iput v1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/ActivityUnitTestCase$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/test/ActivityUnitTestCase$MockParent;-><init>()V

    return-void
.end method


# virtual methods
.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .registers 4
    .parameter "child"
    .parameter "requestCode"

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 336
    iput p2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    .line 337
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 325
    return-void
.end method

.method public getRequestedOrientation()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRequestedOrientation(I)V
    .registers 2
    .parameter "requestedOrientation"

    .prologue
    .line 283
    iput p1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    .line 284
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4
    .parameter "child"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 311
    iput-object p2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    .line 312
    iput p3, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    .line 313
    return-void
.end method
