.class Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;
.super Landroid/os/Handler;
.source "MultiTouchDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/ui/MultiTouchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/MultiTouchDetector;


# direct methods
.method private constructor <init>(Lcom/asus/reader/ui/MultiTouchDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->this$0:Lcom/asus/reader/ui/MultiTouchDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/reader/ui/MultiTouchDetector;Lcom/asus/reader/ui/MultiTouchDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;-><init>(Lcom/asus/reader/ui/MultiTouchDetector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->this$0:Lcom/asus/reader/ui/MultiTouchDetector;

    invoke-static {v0, v1}, Lcom/asus/reader/ui/MultiTouchDetector;->access$102(Lcom/asus/reader/ui/MultiTouchDetector;I)I

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->this$0:Lcom/asus/reader/ui/MultiTouchDetector;

    invoke-static {v0}, Lcom/asus/reader/ui/MultiTouchDetector;->access$200(Lcom/asus/reader/ui/MultiTouchDetector;)V

    .line 160
    iget-object v0, p0, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->this$0:Lcom/asus/reader/ui/MultiTouchDetector;

    invoke-static {v0, v1}, Lcom/asus/reader/ui/MultiTouchDetector;->access$102(Lcom/asus/reader/ui/MultiTouchDetector;I)I

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
