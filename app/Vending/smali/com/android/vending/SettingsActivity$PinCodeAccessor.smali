.class Lcom/android/vending/SettingsActivity$PinCodeAccessor;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinCodeAccessor"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPinEntry:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/android/vending/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/SettingsActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p2, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mContext:Landroid/content/Context;

    .line 318
    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 321
    const v5, 0x7f040036

    iget-object v6, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v4

    .line 322
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0800c9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mPinEntry:Landroid/widget/EditText;

    .line 323
    const v5, 0x7f0800c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 325
    .local v1, message:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v5}, Lcom/android/vending/SettingsActivity;->access$000(Lcom/android/vending/SettingsActivity;)I

    move-result v5

    if-nez v5, :cond_1

    .line 326
    const v3, 0x7f0700b6

    .line 327
    .local v3, titleId:I
    const v2, 0x7f0700b3

    .line 335
    .local v2, messageId:I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 336
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f020048

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07002b

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07002c

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 342
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v5}, Lcom/android/vending/SettingsActivity;->access$000(Lcom/android/vending/SettingsActivity;)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 343
    const v5, 0x7f0700ba

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 328
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #messageId:I
    .end local v3           #titleId:I
    :cond_1
    iget-object v5, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v5}, Lcom/android/vending/SettingsActivity;->access$000(Lcom/android/vending/SettingsActivity;)I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 329
    const v3, 0x7f0700b4

    .line 330
    .restart local v3       #titleId:I
    const v2, 0x7f0700b5

    .restart local v2       #messageId:I
    goto :goto_0

    .line 332
    .end local v2           #messageId:I
    .end local v3           #titleId:I
    :cond_2
    const v3, 0x7f0700b8

    .line 333
    .restart local v3       #titleId:I
    const v2, 0x7f0700b9

    .restart local v2       #messageId:I
    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 359
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    iget-object v1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/SettingsActivity;->access$102(Lcom/android/vending/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v0}, Lcom/android/vending/SettingsActivity;->access$000(Lcom/android/vending/SettingsActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 362
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->PIN_CODE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    iget-object v1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v1}, Lcom/android/vending/SettingsActivity;->access$100(Lcom/android/vending/SettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v0}, Lcom/android/vending/SettingsActivity;->access$200(Lcom/android/vending/SettingsActivity;)V

    .line 369
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 366
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->PIN_CODE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->remove()V

    .line 367
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v0}, Lcom/android/vending/SettingsActivity;->access$200(Lcom/android/vending/SettingsActivity;)V

    goto :goto_0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 349
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 350
    .local v1, alertDialog:Landroid/app/AlertDialog;
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 356
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 353
    return-void
.end method
