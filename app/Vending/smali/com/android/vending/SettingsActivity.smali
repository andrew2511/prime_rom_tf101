.class public Lcom/android/vending/SettingsActivity;
.super Lcom/android/vending/BaseActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;,
        Lcom/android/vending/SettingsActivity$PinCodeAccessor;
    }
.end annotation


# static fields
.field private static final mNotificationChoices:[Ljava/lang/Boolean;

.field private static final mNotificationLabelIds:[I

.field private static final mRatingLabelIds:[I

.field private static final mRatingLevels:[Ljava/lang/Integer;


# instance fields
.field private final PINCODE_LOCKED:I

.field private final PINCODE_NOT_SET:I

.field private final PINCODE_VALID:I

.field private mNotificationSpinner:Landroid/widget/Spinner;

.field private mPinCode:Ljava/lang/String;

.field private mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

.field private mPinCodeButton:Landroid/widget/ImageButton;

.field private mPinCodeState:I

.field private mSelectContentRatingAccessor:Lcom/android/vending/controller/DialogAccessor;

.field private mSelectContentRatingButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vending/SettingsActivity;->mRatingLabelIds:[I

    .line 88
    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/vending/SettingsActivity;->mRatingLevels:[Ljava/lang/Integer;

    .line 102
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/vending/SettingsActivity;->mNotificationLabelIds:[I

    .line 107
    new-array v0, v3, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/vending/SettingsActivity;->mNotificationChoices:[Ljava/lang/Boolean;

    return-void

    .line 74
    :array_0
    .array-data 0x4
        0xaft 0x0t 0x7t 0x7ft
        0xb0t 0x0t 0x7t 0x7ft
        0xb1t 0x0t 0x7t 0x7ft
        0xb2t 0x0t 0x7t 0x7ft
    .end array-data

    .line 102
    :array_1
    .array-data 0x4
        0x73t 0x0t 0x7t 0x7ft
        0x74t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/SettingsActivity;->PINCODE_NOT_SET:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/vending/SettingsActivity;->PINCODE_VALID:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/vending/SettingsActivity;->PINCODE_LOCKED:I

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/SettingsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/vending/SettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/vending/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/vending/SettingsActivity;->mPinCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/vending/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/vending/SettingsActivity;->setPinCodeState()V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/vending/SettingsActivity;->mRatingLevels:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/SettingsActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/vending/SettingsActivity;->saveContentRating(I)V

    return-void
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/vending/SettingsActivity;->mRatingLabelIds:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/vending/SettingsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    return-object v0
.end method

.method private static findPosition([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, element:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .local v0, pos:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 205
    aget-object v1, p0, v0

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 209
    :goto_1
    return v1

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getContentRating()I
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_CONTENT_RATING:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v0}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private initNotificationSpinner()V
    .locals 6

    .prologue
    .line 177
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, p0, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 179
    .local v1, notificationAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/vending/SettingsActivity;->mNotificationLabelIds:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 180
    sget-object v4, Lcom/android/vending/SettingsActivity;->mNotificationLabelIds:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    const v4, 0x1090009

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 184
    const v4, 0x7f080116

    invoke-virtual {p0, v4}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/vending/SettingsActivity;->mNotificationSpinner:Landroid/widget/Spinner;

    .line 185
    iget-object v4, p0, Lcom/android/vending/SettingsActivity;->mNotificationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 186
    iget-object v4, p0, Lcom/android/vending/SettingsActivity;->mNotificationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 189
    sget-object v4, Lcom/android/vending/util/VendingPreferences;->NOTIFY_UPDATES:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 190
    .local v2, notificationChoice:Z
    sget-object v4, Lcom/android/vending/SettingsActivity;->mNotificationChoices:[Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/vending/SettingsActivity;->findPosition([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 191
    .local v3, pos:I
    iget-object v4, p0, Lcom/android/vending/SettingsActivity;->mNotificationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 192
    return-void
.end method

.method private initRatingSpinner()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 143
    sget-object v5, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_HIDE_CONTENT_RATING:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v5}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 144
    .local v0, hideContent:Z
    if-eqz v0, :cond_0

    .line 145
    const v5, 0x7f080111

    invoke-virtual {p0, v5}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 146
    const v5, 0x7f080112

    invoke-virtual {p0, v5}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const v5, 0x7f080113

    invoke-virtual {p0, v5}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v5, 0x1090012

    invoke-direct {v2, p0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 152
    .local v2, ratingAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v5, Lcom/android/vending/SettingsActivity;->mRatingLabelIds:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 153
    sget-object v5, Lcom/android/vending/SettingsActivity;->mRatingLabelIds:[I

    aget v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_1
    const v5, 0x1090009

    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 157
    const v5, 0x7f080115

    invoke-virtual {p0, v5}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    .line 158
    iget-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-static {}, Lcom/android/vending/SettingsActivity;->getContentRating()I

    move-result v3

    .line 163
    .local v3, ratingLevel:I
    const/4 v4, -0x1

    .line 164
    .local v4, ratingPosition:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 165
    iget-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    const v6, 0x7f0700ad

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 171
    :goto_2
    new-instance v5, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;

    invoke-direct {v5, p0, p0, v2, v4}, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;-><init>(Lcom/android/vending/SettingsActivity;Landroid/content/Context;Landroid/widget/ListAdapter;I)V

    iput-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingAccessor:Lcom/android/vending/controller/DialogAccessor;

    .line 173
    iget-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v5}, Lcom/android/vending/SettingsActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0

    .line 167
    :cond_2
    sget-object v5, Lcom/android/vending/SettingsActivity;->mRatingLevels:[Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/vending/SettingsActivity;->findPosition([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 168
    iget-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    sget-object v6, Lcom/android/vending/SettingsActivity;->mRatingLabelIds:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method

.method private saveContentRating(I)V
    .locals 3
    .parameter "newContentRating"

    .prologue
    .line 225
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 226
    .local v0, oldContentRating:I
    if-ne p1, v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 234
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->SEND_CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 235
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/vending/InitializeMarketAction;->setLastSyncTimeMs(J)V

    goto :goto_0
.end method

.method private saveNotificationChoice(Z)V
    .locals 2
    .parameter "notifyMe"

    .prologue
    .line 244
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->NOTIFY_UPDATES:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method private setPinCodeState()V
    .locals 3

    .prologue
    const v2, 0x7f020079

    .line 253
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->PIN_CODE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, prefsPinCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeState:I

    .line 256
    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 264
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCode:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeState:I

    .line 259
    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 261
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeState:I

    .line 262
    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    const v2, 0x7f020078

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 288
    new-instance v0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;-><init>(Lcom/android/vending/SettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

    .line 289
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 290
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 302
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 292
    iget v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 293
    new-instance v0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;-><init>(Lcom/android/vending/SettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

    .line 294
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 295
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->setContentView(I)V

    .line 116
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/SettingsActivity;->setupSlimTitleBar(Ljava/lang/CharSequence;Z)V

    .line 118
    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    .line 119
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-direct {p0}, Lcom/android/vending/SettingsActivity;->initRatingSpinner()V

    .line 122
    invoke-direct {p0}, Lcom/android/vending/SettingsActivity;->initNotificationSpinner()V

    .line 123
    invoke-direct {p0}, Lcom/android/vending/SettingsActivity;->setPinCodeState()V

    .line 124
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mNotificationSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_0

    .line 271
    sget-object v1, Lcom/android/vending/SettingsActivity;->mNotificationChoices:[Ljava/lang/Boolean;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 272
    .local v0, choice:Z
    invoke-direct {p0, v0}, Lcom/android/vending/SettingsActivity;->saveNotificationChoice(Z)V

    .line 274
    .end local v0           #choice:Z
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 306
    return-void
.end method
