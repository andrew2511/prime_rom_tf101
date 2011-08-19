.class public final Lcom/zinio/mobile/android/view/issue/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static c:Z


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:Lcom/zinio/mobile/android/view/issue/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zinio/mobile/android/view/issue/r;->c:Z

    .line 20
    :try_start_0
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_1_DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zinio/mobile/android/view/issue/r;->c:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/zinio/mobile/android/view/issue/i;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/r;->a:Landroid/view/GestureDetector;

    .line 15
    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/r;->b:Lcom/zinio/mobile/android/view/issue/e;

    .line 27
    new-instance v0, Landroid/view/GestureDetector;

    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/r;->a:Landroid/view/GestureDetector;

    .line 28
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/r;->a:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 29
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/r;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 30
    sget-boolean v0, Lcom/zinio/mobile/android/view/issue/r;->c:Z

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/zinio/mobile/android/view/issue/e;

    invoke-direct {v0, p1}, Lcom/zinio/mobile/android/view/issue/e;-><init>(Lcom/zinio/mobile/android/view/issue/c;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/r;->b:Lcom/zinio/mobile/android/view/issue/e;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/r;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 40
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/r;->b:Lcom/zinio/mobile/android/view/issue/e;

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/r;->b:Lcom/zinio/mobile/android/view/issue/e;

    invoke-virtual {v0, p2}, Lcom/zinio/mobile/android/view/issue/e;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 48
    :cond_0
    return v0
.end method
