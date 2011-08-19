.class Lcom/asus/reader/ui/PageSeekBar2$1;
.super Ljava/lang/Object;
.source "PageSeekBar2.java"

# interfaces
.implements Lcom/asus/reader/ui/MySeekBar$InterceptKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ui/PageSeekBar2;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/PageSeekBar2;


# direct methods
.method constructor <init>(Lcom/asus/reader/ui/PageSeekBar2;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/asus/reader/ui/PageSeekBar2$1;->this$0:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2$1;->this$0:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-static {v0}, Lcom/asus/reader/ui/PageSeekBar2;->access$000(Lcom/asus/reader/ui/PageSeekBar2;)Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2$1;->this$0:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-static {v0}, Lcom/asus/reader/ui/PageSeekBar2;->access$000(Lcom/asus/reader/ui/PageSeekBar2;)Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
