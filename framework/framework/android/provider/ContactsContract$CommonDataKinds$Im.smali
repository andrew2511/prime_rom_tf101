.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 4850
    const/4 v1, -0x1

    if-ne p1, v1, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, p2

    .line 4854
    :goto_a
    return-object v1

    .line 4853
    :cond_b
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 4854
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_a
.end method

.method public static final getProtocolLabelResource(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 4829
    packed-switch p0, :pswitch_data_2c

    .line 4839
    const v0, 0x1040280

    :goto_6
    return v0

    .line 4830
    :pswitch_7
    const v0, 0x1040281

    goto :goto_6

    .line 4831
    :pswitch_b
    const v0, 0x1040282

    goto :goto_6

    .line 4832
    :pswitch_f
    const v0, 0x1040283

    goto :goto_6

    .line 4833
    :pswitch_13
    const v0, 0x1040284

    goto :goto_6

    .line 4834
    :pswitch_17
    const v0, 0x1040285

    goto :goto_6

    .line 4835
    :pswitch_1b
    const v0, 0x1040286

    goto :goto_6

    .line 4836
    :pswitch_1f
    const v0, 0x1040287

    goto :goto_6

    .line 4837
    :pswitch_23
    const v0, 0x1040288

    goto :goto_6

    .line 4838
    :pswitch_27
    const v0, 0x1040289

    goto :goto_6

    .line 4829
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 4816
    if-nez p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, p2

    .line 4820
    :goto_9
    return-object v1

    .line 4819
    :cond_a
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 4820
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_9
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 4801
    packed-switch p0, :pswitch_data_14

    .line 4805
    const v0, 0x104027c

    :goto_6
    return v0

    .line 4802
    :pswitch_7
    const v0, 0x104027d

    goto :goto_6

    .line 4803
    :pswitch_b
    const v0, 0x104027e

    goto :goto_6

    .line 4804
    :pswitch_f
    const v0, 0x104027f

    goto :goto_6

    .line 4801
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
