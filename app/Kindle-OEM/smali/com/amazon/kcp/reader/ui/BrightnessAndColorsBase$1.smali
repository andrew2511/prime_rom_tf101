.class Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;
.super Ljava/lang/Object;
.source "BrightnessAndColorsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->displayOptions(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;->this$0:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;->val$show:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;->this$0:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->syncSelectedOptions()V

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;->this$0:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;->this$0:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;->this$0:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->requestFocus()Z

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase$1;->this$0:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->setVisibility(I)V

    goto :goto_0
.end method
