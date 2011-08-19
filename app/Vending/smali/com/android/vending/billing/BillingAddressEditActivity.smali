.class abstract Lcom/android/vending/billing/BillingAddressEditActivity;
.super Lcom/android/vending/billing/BaseBilling;
.source "BillingAddressEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/BillingAddressEditActivity$2;
    }
.end annotation


# instance fields
.field protected mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

.field private mCancelButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/Dialog;

.field private mEditSection:Landroid/view/ViewGroup;

.field private mErrorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/InputField;",
            ">;"
        }
    .end annotation
.end field

.field private mErrors:Z

.field private mLightTheme:Landroid/view/ContextThemeWrapper;

.field protected mPhoneNumberEditView:Landroid/widget/EditText;

.field protected mPhoneNumberView:Landroid/widget/TextView;

.field private mSaveAddress:Z

.field private mSaveButton:Landroid/widget/Button;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTransactionId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBilling;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mErrorList:Ljava/util/List;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/billing/BillingAddressEditActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/vending/billing/BillingAddressEditActivity;->displayErrors(Ljava/util/List;)V

    return-void
.end method

.method private displayError(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "textView"
    .parameter "errorMessageResId"

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mErrors:Z

    .line 236
    invoke-virtual {p0, p2}, Lcom/android/vending/billing/BillingAddressEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method

.method private displayErrors(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/InputField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, errorFields:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    const v9, 0x7f07010c

    .line 245
    const/4 v6, 0x0

    .line 246
    .local v6, topMostView:Landroid/view/View;
    const/4 v5, 0x0

    .line 247
    .local v5, topMostTop:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/model/InputField;

    .line 248
    .local v3, field:Lcom/android/vending/model/InputField;
    const/4 v2, 0x0

    .line 250
    .local v2, currentView:Landroid/view/View;
    sget-object v7, Lcom/android/vending/billing/BillingAddressEditActivity$2;->$SwitchMap$com$android$vending$model$InputField:[I

    invoke-virtual {v3}, Lcom/android/vending/model/InputField;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v2

    .line 255
    if-eqz v2, :cond_1

    .line 256
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    invoke-direct {p0, v7, v9}, Lcom/android/vending/billing/BillingAddressEditActivity;->displayError(Landroid/widget/TextView;I)V

    .line 299
    :cond_1
    :goto_1
    if-nez v6, :cond_3

    .line 300
    move-object v6, v2

    .line 301
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mEditSection:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v7, v2, v8}, Lcom/android/vending/util/Util;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v5

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_1

    .line 262
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    invoke-direct {p0, v7, v9}, Lcom/android/vending/billing/BillingAddressEditActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 266
    :pswitch_2
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_1

    instance-of v7, v2, Landroid/widget/EditText;

    if-eqz v7, :cond_1

    .line 268
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    const v8, 0x7f07010e

    invoke-direct {p0, v7, v8}, Lcom/android/vending/billing/BillingAddressEditActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 272
    :pswitch_3
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mNameView:Landroid/widget/TextView;

    .line 273
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    const v8, 0x7f07010b

    invoke-direct {p0, v7, v8}, Lcom/android/vending/billing/BillingAddressEditActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 276
    :pswitch_4
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v2

    .line 277
    if-eqz v2, :cond_1

    .line 278
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    goto :goto_1

    .line 282
    :pswitch_5
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_1

    instance-of v7, v2, Landroid/widget/EditText;

    if-eqz v7, :cond_1

    .line 284
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    goto :goto_1

    .line 288
    :pswitch_6
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 289
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    .line 293
    :goto_2
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    const v8, 0x7f070110

    invoke-direct {p0, v7, v8}, Lcom/android/vending/billing/BillingAddressEditActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberEditView:Landroid/widget/EditText;

    goto :goto_2

    .line 302
    :cond_3
    if-eqz v2, :cond_0

    .line 303
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mEditSection:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v7, v2, v8}, Lcom/android/vending/util/Util;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v1

    .line 304
    .local v1, currentTop:I
    if-ge v1, v5, :cond_0

    .line 305
    move-object v6, v2

    .line 306
    move v5, v1

    goto/16 :goto_0

    .line 311
    .end local v1           #currentTop:I
    .end local v2           #currentView:Landroid/view/View;
    .end local v3           #field:Lcom/android/vending/model/InputField;
    :cond_4
    invoke-virtual {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->displayErrorMessages()V

    .line 314
    if-eqz v6, :cond_5

    .line 315
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 316
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 317
    iget-object v7, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 319
    :cond_5
    return-void

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private initDialogViews()V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->makeDialog()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mDialog:Landroid/app/Dialog;

    .line 123
    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 128
    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f080070

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    .local v0, view:Landroid/view/ViewGroup;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 130
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 132
    iput-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mEditSection:Landroid/view/ViewGroup;

    .line 133
    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberEditView:Landroid/widget/EditText;

    .line 135
    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mNameView:Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mSaveButton:Landroid/widget/Button;

    .line 138
    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mCancelButton:Landroid/widget/Button;

    .line 139
    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method private makeDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mLightTheme:Landroid/view/ContextThemeWrapper;

    const v4, 0x7f040021

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 147
    .local v2, v:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 149
    const v3, 0x7f07012a

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/BillingAddressEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private setReturnValues(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 376
    iget-object v9, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v9}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 377
    .local v0, addressData:Lcom/android/i18n/addressinput/AddressData;
    iget-object v9, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, line1:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, line2:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, city:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, state:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, zipCode:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, country:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 388
    .local v6, phone:Ljava/lang/String;
    :goto_0
    const-string v9, "billing_name"

    invoke-virtual {p1, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v9, "billing_address_line1"

    invoke-virtual {p1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v9, "billing_address_line2"

    invoke-virtual {p1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v9, "billing_address_city"

    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v9, "billing_address_state"

    invoke-virtual {p1, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v9, "billing_address_zip_code"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v9, "billing_phone_number"

    invoke-virtual {p1, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v9, "billing_address_country"

    invoke-virtual {p1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    return-void

    .line 384
    .end local v6           #phone:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    goto :goto_0
.end method


# virtual methods
.method protected createViewOnStart()Landroid/view/View;
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->initDialogViews()V

    .line 116
    invoke-virtual {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BillingAddressEditActivity;->setupViewFromIntent(Landroid/content/Intent;)V

    .line 118
    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f08006e

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected displayErrorMessages()V
    .locals 3

    .prologue
    .line 215
    iget-boolean v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mErrors:Z

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->getErrorToastMessageId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 219
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected getErrorToastMessageId()I
    .locals 1

    .prologue
    .line 223
    const v0, 0x7f070112

    return v0
.end method

.method protected handleBadBillingAddress(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/InputField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, errors:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/billing/BillingAddressEditActivity;->displayErrors(Ljava/util/List;)V

    .line 408
    return-void
.end method

.method protected onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "service"
    .parameter "account"
    .parameter "authToken"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/android/vending/billing/BaseBilling;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    iget-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

    sget-object v1, Lcom/android/vending/billing/BaseBilling$State;->SAVING_ADDRESS:Lcom/android/vending/billing/BaseBilling$State;

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAssetId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BillingAddressEditActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    .line 182
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 185
    .local v1, phoneNumberToCheck:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressProblems()Lcom/android/i18n/addressinput/AddressProblems;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mErrorList:Ljava/util/List;

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/android/vending/billing/BillingAddressEditActivity;->checkBillingInformation(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;Ljava/util/List;)V

    .line 188
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mErrorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    iget-boolean v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mSaveAddress:Z

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAssetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/vending/billing/BillingAddressEditActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v1           #phoneNumberToCheck:Ljava/lang/String;
    :goto_1
    return-void

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 195
    .restart local v1       #phoneNumberToCheck:Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/vending/billing/BillingAddressEditActivity;->setReturnValues(Landroid/content/Intent;)V

    .line 197
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/vending/billing/BillingAddressEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->finish()V

    goto :goto_1

    .line 201
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mErrorList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/vending/billing/BillingAddressEditActivity;->displayErrors(Ljava/util/List;)V

    goto :goto_1

    .line 203
    .end local v1           #phoneNumberToCheck:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_4

    .line 204
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/BillingAddressEditActivity;->setResult(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->finish()V

    goto :goto_1

    .line 207
    :cond_4
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBilling;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBilling;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x103000c

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mLightTheme:Landroid/view/ContextThemeWrapper;

    .line 82
    invoke-virtual {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 83
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 84
    .local v1, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 85
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 86
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "save_address"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mSaveAddress:Z

    .line 90
    iget-boolean v3, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mSaveAddress:Z

    if-eqz v3, :cond_0

    .line 91
    const-string v3, "transaction_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mTransactionId:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAssetId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 94
    const-string v3, "asset id is null"

    invoke-static {v3}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v5}, Lcom/android/vending/billing/BillingAddressEditActivity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->finish()V

    .line 99
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 411
    packed-switch p2, :pswitch_data_0

    .line 425
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 420
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->finish()V

    :cond_0
    move v0, v1

    .line 423
    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "inState"

    .prologue
    .line 436
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBilling;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 437
    iget-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 438
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 430
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBilling;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 431
    iget-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->saveInstanceState(Landroid/os/Bundle;)V

    .line 432
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/vending/billing/BaseBilling;->onStart()V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BillingAddressEditActivity;->startSetupActionChain(Z)V

    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/vending/billing/BaseBilling;->onStop()V

    .line 110
    iget-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    return-void
.end method

.method protected setupViewFromIntent(Landroid/content/Intent;)V
    .locals 21
    .parameter "intent"

    .prologue
    .line 322
    const-string v3, "billing_name"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 323
    .local v16, name:Ljava/lang/String;
    const-string v3, "billing_phone_number"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 324
    .local v17, phoneNumber:Ljava/lang/String;
    const-string v3, "billing_address_line1"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 325
    .local v14, line1:Ljava/lang/String;
    const-string v3, "billing_address_line2"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 326
    .local v15, line2:Ljava/lang/String;
    const-string v3, "billing_address_city"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, city:Ljava/lang/String;
    const-string v3, "billing_address_state"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 328
    .local v18, state:Ljava/lang/String;
    const-string v3, "billing_address_zip_code"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 329
    .local v20, zipCode:Ljava/lang/String;
    const-string v3, "billing_address_country"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 331
    .local v10, country:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberEditView:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BillingAddressEditActivity;->mNameView:Landroid/widget/TextView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-static/range {v17 .. v17}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberEditView:Landroid/widget/EditText;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 344
    :goto_0
    new-instance v3, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v3, v14}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v8

    .line 348
    .local v8, addressData:Lcom/android/i18n/addressinput/AddressData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BillingAddressEditActivity;->mDialog:Landroid/app/Dialog;

    move-object v3, v0

    const v4, 0x7f080074

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 349
    .local v5, rootView:Landroid/view/ViewGroup;
    new-instance v3, Lcom/android/i18n/addressinput/FormOptions$Builder;

    invoke-direct {v3}, Lcom/android/i18n/addressinput/FormOptions$Builder;-><init>()V

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/FormOptions$Builder;->build()Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v6

    .line 353
    .local v6, addressFormOptions:Lcom/android/i18n/addressinput/FormOptions;
    new-instance v3, Lcom/android/i18n/addressinput/AddressWidget;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BillingAddressEditActivity;->mLightTheme:Landroid/view/ContextThemeWrapper;

    move-object v4, v0

    new-instance v7, Lcom/android/vending/billing/AddressMetadataCacheManager;

    invoke-direct {v7}, Lcom/android/vending/billing/AddressMetadataCacheManager;-><init>()V

    invoke-direct/range {v3 .. v8}, Lcom/android/i18n/addressinput/AddressWidget;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;Lcom/android/i18n/addressinput/AddressData;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/billing/BillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    .line 357
    const-string v3, "billing_errors"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 358
    .local v12, errors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v12, :cond_2

    .line 359
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v11, errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/InputField;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local p1
    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 361
    .local v19, val:I
    invoke-static/range {v19 .. v19}, Lcom/android/vending/model/InputField;->fromProtoInputField(I)Lcom/android/vending/model/InputField;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    .end local v5           #rootView:Landroid/view/ViewGroup;
    .end local v6           #addressFormOptions:Lcom/android/i18n/addressinput/FormOptions;
    .end local v8           #addressData:Lcom/android/i18n/addressinput/AddressData;
    .end local v11           #errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/InputField;>;"
    .end local v12           #errors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #val:I
    .restart local p1
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BillingAddressEditActivity;->mPhoneNumberEditView:Landroid/widget/EditText;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_0

    .line 367
    .end local p1
    .restart local v5       #rootView:Landroid/view/ViewGroup;
    .restart local v6       #addressFormOptions:Lcom/android/i18n/addressinput/FormOptions;
    .restart local v8       #addressData:Lcom/android/i18n/addressinput/AddressData;
    .restart local v11       #errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/InputField;>;"
    .restart local v12       #errors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BillingAddressEditActivity;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    new-instance v4, Lcom/android/vending/billing/BillingAddressEditActivity$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/BillingAddressEditActivity$1;-><init>(Lcom/android/vending/billing/BillingAddressEditActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    .end local v11           #errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/InputField;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 403
    return-void
.end method
