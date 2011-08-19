.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f0c0113

    .line 507
    if-nez p1, :cond_0

    move v0, v1

    .line 529
    :goto_0
    return v0

    .line 508
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 529
    const v0, 0x7f0c010c

    goto :goto_0

    .line 509
    :pswitch_0
    const v0, 0x7f0c010d

    goto :goto_0

    .line 510
    :pswitch_1
    const v0, 0x7f0c010e

    goto :goto_0

    .line 511
    :pswitch_2
    const v0, 0x7f0c010f

    goto :goto_0

    .line 512
    :pswitch_3
    const v0, 0x7f0c0110

    goto :goto_0

    .line 513
    :pswitch_4
    const v0, 0x7f0c0111

    goto :goto_0

    .line 514
    :pswitch_5
    const v0, 0x7f0c0112

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 515
    goto :goto_0

    .line 516
    :pswitch_7
    const v0, 0x7f0c0114

    goto :goto_0

    .line 517
    :pswitch_8
    const v0, 0x7f0c0115

    goto :goto_0

    .line 518
    :pswitch_9
    const v0, 0x7f0c0116

    goto :goto_0

    .line 519
    :pswitch_a
    const v0, 0x7f0c0117

    goto :goto_0

    .line 520
    :pswitch_b
    const v0, 0x7f0c0118

    goto :goto_0

    .line 521
    :pswitch_c
    const v0, 0x7f0c0119

    goto :goto_0

    .line 522
    :pswitch_d
    const v0, 0x7f0c011a

    goto :goto_0

    .line 523
    :pswitch_e
    const v0, 0x7f0c011b

    goto :goto_0

    .line 524
    :pswitch_f
    const v0, 0x7f0c011c

    goto :goto_0

    .line 525
    :pswitch_10
    const v0, 0x7f0c011d

    goto :goto_0

    .line 526
    :pswitch_11
    const v0, 0x7f0c011e

    goto :goto_0

    .line 527
    :pswitch_12
    const v0, 0x7f0c011f

    goto :goto_0

    .line 528
    :pswitch_13
    const v0, 0x7f0c0120

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 502
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
