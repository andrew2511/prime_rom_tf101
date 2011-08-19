.class Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;
.super Ljava/lang/Object;
.source "XT9TextKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/XT9TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullKeyListener"
.end annotation


# static fields
.field private static sInstance:Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;->sInstance:Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;->sInstance:Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;

    .line 256
    :goto_0
    return-object v0

    .line 255
    :cond_0
    new-instance v0, Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;

    invoke-direct {v0}, Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;->sInstance:Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;

    .line 256
    sget-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;->sInstance:Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;

    goto :goto_0
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .parameter "view"
    .parameter "content"
    .parameter "states"

    .prologue
    .line 249
    return-void
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "event"

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method
