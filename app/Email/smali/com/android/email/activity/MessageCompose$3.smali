.class Lcom/android/email/activity/MessageCompose$3;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v6, 0x0

    .line 511
    sub-int v4, p3, p2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    :cond_0
    move-object v4, v6

    .line 547
    :goto_0
    return-object v4

    .line 517
    :cond_1
    move v3, p5

    .line 518
    .local v3, scanBack:I
    const/4 v1, 0x0

    .line 519
    .local v1, dotFound:Z
    :goto_1
    if-lez v3, :cond_4

    .line 520
    add-int/lit8 v3, v3, -0x1

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 521
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object v4, v6

    .line 526
    goto :goto_0

    .line 523
    :sswitch_1
    const/4 v1, 0x1

    .line 524
    goto :goto_1

    .line 528
    :sswitch_2
    if-nez v1, :cond_2

    move-object v4, v6

    .line 529
    goto :goto_0

    .line 534
    :cond_2
    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    .line 535
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v4, ","

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 536
    .local v2, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v4, v2

    .line 537
    goto :goto_0

    .line 539
    .end local v2           #sb:Landroid/text/SpannableStringBuilder;
    :cond_3
    const-string v4, ", "

    goto :goto_0

    .end local v0           #c:C
    :cond_4
    move-object v4, v6

    .line 547
    goto :goto_0

    .line 521
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x2e -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method
