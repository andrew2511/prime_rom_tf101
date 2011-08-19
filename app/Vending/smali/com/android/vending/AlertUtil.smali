.class public Lcom/android/vending/AlertUtil;
.super Ljava/lang/Object;
.source "AlertUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AlertUtil$1;,
        Lcom/android/vending/AlertUtil$MutableDialogAccessor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "activity"
    .parameter "dialogAccessor"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public static displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "activity"
    .parameter "dialogAccessor"
    .parameter "title"
    .parameter "message"
    .parameter "positiveTitle"
    .parameter "negativeTitle"

    .prologue
    .line 185
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->access$100(Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/vending/BaseActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 187
    return-void
.end method

.method public static getAssetDeclinedMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "assetName"
    .parameter "reason"

    .prologue
    .line 201
    packed-switch p2, :pswitch_data_0

    .line 216
    :pswitch_0
    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, formatString:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 203
    .end local v0           #formatString:Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f070080

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0       #formatString:Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v0           #formatString:Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f07007f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .restart local v0       #formatString:Ljava/lang/String;
    goto :goto_0

    .line 209
    .end local v0           #formatString:Ljava/lang/String;
    :pswitch_3
    const v1, 0x7f070083

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0       #formatString:Ljava/lang/String;
    goto :goto_0

    .line 212
    .end local v0           #formatString:Ljava/lang/String;
    :pswitch_4
    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .restart local v0       #formatString:Ljava/lang/String;
    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getAssetRemovedMessage(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "assetName"
    .parameter "isMalicious"

    .prologue
    .line 191
    if-eqz p2, :cond_0

    const v1, 0x7f07007b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 195
    .local v0, formatString:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 191
    .end local v0           #formatString:Ljava/lang/String;
    :cond_0
    const v1, 0x7f07007c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 166
    new-instance v0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/AlertUtil$MutableDialogAccessor;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Lcom/android/vending/AlertUtil$1;)V

    .line 168
    .local v0, dialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;
    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 169
    return-object v0
.end method

.method public static registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;
    .locals 6
    .parameter "activity"
    .parameter "positiveListener"
    .parameter "negativeListener"
    .parameter "cancelListener"

    .prologue
    .line 152
    new-instance v0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/AlertUtil$MutableDialogAccessor;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Lcom/android/vending/AlertUtil$1;)V

    .line 155
    .local v0, dialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;
    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 156
    return-object v0
.end method
