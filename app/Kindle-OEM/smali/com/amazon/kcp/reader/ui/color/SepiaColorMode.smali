.class Lcom/amazon/kcp/reader/ui/color/SepiaColorMode;
.super Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;
.source "SepiaColorMode.java"


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 23
    .parameter "resources"

    .prologue
    .line 23
    const v2, 0x7f090012

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v2, 0x7f090013

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v2, 0x7f090014

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v2, 0x7f090015

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v2, 0x7f090016

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const v2, 0x7f090017

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const v2, 0x7f090018

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const v2, 0x7f090019

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const/4 v11, 0x0

    const-string v12, "sepia"

    const v13, 0x7f02001b

    const v14, 0x7f020018

    const v15, 0x7f020017

    const v16, 0x7f020016

    const v17, 0x7f020049

    const v18, 0x7f02006d

    const v19, 0x7f020028

    const v20, 0x7f020045

    const v21, 0x7f0e008e

    const v22, 0x7f0e0090

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v22}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;-><init>(IIIIIIIIZLjava/lang/String;IIIIIIIIII)V

    .line 43
    return-void
.end method
