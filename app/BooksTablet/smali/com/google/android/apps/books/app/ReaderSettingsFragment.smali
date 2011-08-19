.class public Lcom/google/android/apps/books/app/ReaderSettingsFragment;
.super Landroid/app/Fragment;
.source "ReaderSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReadingMode;,
        Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReaderSettingsFragment"


# instance fields
.field private mBrightness:Lcom/google/android/apps/books/preference/BrightnessPreference;

.field private mBrightnessListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mDone:Landroid/widget/Button;

.field private mLineHeight:Lcom/google/android/apps/books/preference/RadioGroupPreference;

.field private mListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

.field private mReadingMode:Lcom/google/android/apps/books/preference/RadioGroupPreference;

.field private mReadingModeListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mTextSettingsListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mTextSize:Lcom/google/android/apps/books/preference/RadioGroupPreference;

.field private mTheme:Lcom/google/android/apps/books/preference/RadioGroupPreference;

.field private mThemeListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mTypeface:Lcom/google/android/apps/books/preference/SpinnerPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 129
    new-instance v0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;-><init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mReadingModeListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 139
    new-instance v0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$3;-><init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mBrightnessListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 149
    new-instance v0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;-><init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mThemeListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 157
    new-instance v0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$5;-><init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSettingsListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/app/ReaderSettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->updateEnabled(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->getReadingMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/preference/BrightnessPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mBrightness:Lcom/google/android/apps/books/preference/BrightnessPreference;

    return-object v0
.end method

.method private static convertReadingMode(Ljava/lang/String;)I
    .locals 4
    .parameter "readingMode"

    .prologue
    const/4 v3, 0x2

    .line 176
    const-string v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 182
    :goto_0
    return v0

    .line 178
    :cond_0
    const-string v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const-string v0, "ReaderSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown readingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 182
    goto :goto_0
.end method

.method private static convertReadingMode(I)Ljava/lang/String;
    .locals 4
    .parameter "readingMode"

    .prologue
    const-string v3, "text"

    .line 187
    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    .line 188
    const-string v0, "text"

    move-object v0, v3

    .line 193
    :goto_0
    return-object v0

    .line 189
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 190
    const-string v0, "image"

    goto :goto_0

    .line 192
    :cond_1
    const-string v0, "ReaderSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown readingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v0, "text"

    move-object v0, v3

    goto :goto_0
.end method

.method private getReadingMode()I
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mReadingMode:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    invoke-virtual {v1}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, readingMode:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->convertReadingMode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1

    .prologue
    .line 198
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private updateEnabled(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "prefs"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->getReadingMode()I

    move-result v0

    .line 112
    .local v0, readingMode:I
    const-string v2, "ReaderSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEnabled() with mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 116
    .local v1, textMode:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSize:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->setEnabled(Z)V

    .line 117
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTypeface:Lcom/google/android/apps/books/preference/SpinnerPreference;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/books/preference/SpinnerPreference;->setEnabled(Z)V

    .line 118
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mLineHeight:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->setEnabled(Z)V

    .line 120
    return-void

    .line 114
    .end local v1           #textMode:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    .local v1, originalContext:Landroid/content/Context;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v4, 0x103006b

    invoke-direct {v0, v1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 55
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 57
    const v4, 0x7f04000c

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 58
    .local v3, view:Landroid/view/View;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 60
    .local v2, prefs:Landroid/content/SharedPreferences;
    const v4, 0x7f0e0031

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/preference/RadioGroupPreference;

    iput-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mReadingMode:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    .line 61
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mReadingMode:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mReadingModeListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 63
    const v4, 0x7f0e002b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/preference/BrightnessPreference;

    iput-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mBrightness:Lcom/google/android/apps/books/preference/BrightnessPreference;

    .line 64
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mBrightness:Lcom/google/android/apps/books/preference/BrightnessPreference;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mBrightnessListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 65
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mBrightness:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setWindow(Landroid/view/Window;)V

    .line 67
    const v4, 0x7f0e0035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/preference/RadioGroupPreference;

    iput-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTheme:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    .line 68
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTheme:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mThemeListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 70
    const v4, 0x7f0e0033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/preference/RadioGroupPreference;

    iput-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSize:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    .line 71
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSize:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSettingsListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 73
    const v4, 0x7f0e0037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/preference/SpinnerPreference;

    iput-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTypeface:Lcom/google/android/apps/books/preference/SpinnerPreference;

    .line 74
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTypeface:Lcom/google/android/apps/books/preference/SpinnerPreference;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSettingsListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/apps/books/preference/SpinnerPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 76
    const v4, 0x7f0e002f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/preference/RadioGroupPreference;

    iput-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mLineHeight:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    .line 77
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mLineHeight:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSettingsListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 79
    const v4, 0x7f0e0024

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mDone:Landroid/widget/Button;

    .line 80
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mDone:Landroid/widget/Button;

    new-instance v5, Lcom/google/android/apps/books/app/ReaderSettingsFragment$1;

    invoke-direct {v5, p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$1;-><init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->updateEnabled(Landroid/content/SharedPreferences;)V

    .line 88
    return-object v3
.end method

.method public onModesAvailable(IZZ)V
    .locals 8
    .parameter "preferredMode"
    .parameter "hasTextMode"
    .parameter "hasImageMode"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 96
    const-string v3, "ReaderSettingsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onModesAvailable() with preferredMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasTextMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasImageMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mReadingMode:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    const-string v4, "text"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 100
    .local v2, textMode:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mReadingMode:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    const-string v4, "image"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, imageMode:Landroid/view/View;
    if-eqz p2, :cond_0

    move v3, v6

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    if-eqz p3, :cond_1

    move v3, v6

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-static {p1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->convertReadingMode(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, readingMode:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mReadingMode:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->setValue(Ljava/lang/String;)V

    .line 107
    return-void

    .end local v1           #readingMode:Ljava/lang/String;
    :cond_0
    move v3, v7

    .line 102
    goto :goto_0

    :cond_1
    move v3, v7

    .line 103
    goto :goto_1
.end method

.method public setListener(Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    .line 93
    return-void
.end method
