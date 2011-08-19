.class public Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f0c013e

    .line 600
    if-nez p1, :cond_0

    move v0, v1

    .line 605
    :goto_0
    return v0

    .line 601
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 605
    const v0, 0x7f0c013f

    goto :goto_0

    .line 602
    :pswitch_0
    const v0, 0x7f0c013c

    goto :goto_0

    .line 603
    :pswitch_1
    const v0, 0x7f0c013d

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 604
    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
