.class Lcom/amazon/kcp/reader/ui/color/HalloweenColorMode;
.super Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;
.source "HalloweenColorMode.java"


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 23
    .parameter "resources"

    .prologue
    .line 17
    const/16 v3, -0x6700

    const v4, -0x7f006700

    const/high16 v5, -0x100

    const v2, 0x7f09000d

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v2, 0x7f09000e

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const v2, 0x7f09000f

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const v2, 0x7f090010

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const v2, 0x7f090011

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const/4 v11, 0x1

    const-string v12, "halloween"

    const v13, 0x7f020019

    const v14, 0x7f020018

    const v15, 0x7f020017

    const v16, 0x7f020015

    const v17, 0x7f020047

    const v18, 0x7f02006b

    const v19, 0x7f020027

    const v20, 0x108009b

    const v21, 0x7f0e008d

    const v22, 0x7f0e008f

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v22}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;-><init>(IIIIIIIIZLjava/lang/String;IIIIIIIIII)V

    .line 37
    return-void
.end method
