.class public Lcom/layar/ui/StreamStyle;
.super Ljava/lang/Object;
.source "StreamStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStreamStyle(Landroid/content/Context;)Lcom/layar/ui/LayerStyle;
    .locals 5
    .parameter "context"

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 12
    const v4, 0x7f08001f

    .line 11
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 13
    .local v0, dialogsBackground:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 14
    const v4, 0x7f080020

    .line 13
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 15
    .local v2, textColor:I
    new-instance v1, Lcom/layar/ui/LayerStyle;

    invoke-direct {v1}, Lcom/layar/ui/LayerStyle;-><init>()V

    .line 16
    .local v1, style:Lcom/layar/ui/LayerStyle;
    iput v0, v1, Lcom/layar/ui/LayerStyle;->bannerBackgroundColor:I

    .line 17
    iput v2, v1, Lcom/layar/ui/LayerStyle;->bannerTextColor:I

    .line 18
    iput v0, v1, Lcom/layar/ui/LayerStyle;->biwBackgroundColor:I

    .line 19
    iput v2, v1, Lcom/layar/ui/LayerStyle;->textColor:I

    .line 20
    iput v2, v1, Lcom/layar/ui/LayerStyle;->titleColor:I

    .line 21
    return-object v1
.end method
