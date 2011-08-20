.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
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
    name = "Relation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x1

.field public static final TYPE_BROTHER:I = 0x2

.field public static final TYPE_CHILD:I = 0x3

.field public static final TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final TYPE_FATHER:I = 0x5

.field public static final TYPE_FRIEND:I = 0x6

.field public static final TYPE_MANAGER:I = 0x7

.field public static final TYPE_MOTHER:I = 0x8

.field public static final TYPE_PARENT:I = 0x9

.field public static final TYPE_PARTNER:I = 0xa

.field public static final TYPE_REFERRED_BY:I = 0xb

.field public static final TYPE_RELATIVE:I = 0xc

.field public static final TYPE_SISTER:I = 0xd

.field public static final TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 5149
    if-nez p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, p2

    .line 5153
    :goto_9
    return-object v1

    .line 5152
    :cond_a
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    .line 5153
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_9
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 5121
    packed-switch p0, :pswitch_data_40

    .line 5138
    const v0, 0x1040289

    :goto_6
    return v0

    .line 5122
    :pswitch_7
    const v0, 0x104028b

    goto :goto_6

    .line 5123
    :pswitch_b
    const v0, 0x104028c

    goto :goto_6

    .line 5124
    :pswitch_f
    const v0, 0x104028d

    goto :goto_6

    .line 5126
    :pswitch_13
    const v0, 0x104028e

    goto :goto_6

    .line 5127
    :pswitch_17
    const v0, 0x104028f

    goto :goto_6

    .line 5128
    :pswitch_1b
    const v0, 0x1040290

    goto :goto_6

    .line 5129
    :pswitch_1f
    const v0, 0x1040291

    goto :goto_6

    .line 5130
    :pswitch_23
    const v0, 0x1040292

    goto :goto_6

    .line 5131
    :pswitch_27
    const v0, 0x1040293

    goto :goto_6

    .line 5132
    :pswitch_2b
    const v0, 0x1040294

    goto :goto_6

    .line 5134
    :pswitch_2f
    const v0, 0x1040295

    goto :goto_6

    .line 5135
    :pswitch_33
    const v0, 0x1040296

    goto :goto_6

    .line 5136
    :pswitch_37
    const v0, 0x1040297

    goto :goto_6

    .line 5137
    :pswitch_3b
    const v0, 0x1040298

    goto :goto_6

    .line 5121
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
    .end packed-switch
.end method
