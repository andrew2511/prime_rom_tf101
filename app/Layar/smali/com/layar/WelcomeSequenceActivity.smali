.class public Lcom/layar/WelcomeSequenceActivity;
.super Landroid/app/Activity;
.source "WelcomeSequenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;,
        Lcom/layar/WelcomeSequenceActivity$ViewHolder;,
        Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;,
        Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;
    }
.end annotation


# static fields
.field public static final EXTRAS_ON_START:Ljava/lang/String; = "extras:on_start"

.field private static final FILENAME:Ljava/lang/String; = "welcome/welcome.json"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isOnStart:Z

.field private mCurrentScreen:I

.field private mScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;",
            ">;"
        }
    .end annotation
.end field

.field private viewContainer:Landroid/view/ViewGroup;

.field private viewImage:Landroid/widget/ImageView;

.field private viewNext:Landroid/widget/Button;

.field private viewSkip:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/layar/WelcomeSequenceActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/WelcomeSequenceActivity;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/layar/WelcomeSequenceActivity;->mCurrentScreen:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/WelcomeSequenceActivity;->isOnStart:Z

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/layar/WelcomeSequenceActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/layar/WelcomeSequenceActivity;->mScreens:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/layar/WelcomeSequenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/layar/WelcomeSequenceActivity;->showNextScreen()V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/WelcomeSequenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/layar/WelcomeSequenceActivity;->setPrefsToMax()V

    return-void
.end method

.method private onNextClick()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/layar/WelcomeSequenceActivity$1;

    invoke-direct {v0, p0}, Lcom/layar/WelcomeSequenceActivity$1;-><init>(Lcom/layar/WelcomeSequenceActivity;)V

    return-object v0
.end method

.method private onSkipClick()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/layar/WelcomeSequenceActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/WelcomeSequenceActivity$2;-><init>(Lcom/layar/WelcomeSequenceActivity;)V

    return-object v0
.end method

.method private prepareView(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;>;"
    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 131
    .local v4, messagesCount:I
    iget-object v8, p0, Lcom/layar/WelcomeSequenceActivity;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 133
    .local v7, viewsCount:I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 134
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 169
    iget-object v8, p0, Lcom/layar/WelcomeSequenceActivity;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 170
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x1

    if-le v4, v8, :cond_4

    move v8, v11

    :goto_1
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    return-void

    .line 136
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-lt v1, v7, :cond_1

    .line 137
    const v8, 0x7f030069

    invoke-virtual {v2, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 138
    .local v6, viewMessage:Landroid/view/View;
    new-instance v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;

    invoke-direct {v0, p0, v13}, Lcom/layar/WelcomeSequenceActivity$ViewHolder;-><init>(Lcom/layar/WelcomeSequenceActivity;Lcom/layar/WelcomeSequenceActivity$ViewHolder;)V

    .line 139
    .local v0, holder:Lcom/layar/WelcomeSequenceActivity$ViewHolder;
    const v8, 0x7f07008f

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 140
    const v8, 0x7f070025

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->text:Landroid/widget/TextView;

    .line 141
    const v8, 0x7f070024

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 142
    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f80

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 146
    iget-object v8, p0, Lcom/layar/WelcomeSequenceActivity;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .end local v5           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #viewMessage:Landroid/view/View;
    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;

    .line 152
    .local v3, message:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;
    iget-object v8, v3, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;->iconId:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 153
    iget-object v8, v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    :goto_3
    iget-object v8, v3, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;->titleId:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 160
    iget-object v8, v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_4
    iget-object v8, v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v9, v3, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;->textId:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/layar/util/Util;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v0           #holder:Lcom/layar/WelcomeSequenceActivity$ViewHolder;
    .end local v3           #message:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;
    :cond_1
    iget-object v8, p0, Lcom/layar/WelcomeSequenceActivity;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;

    .restart local v0       #holder:Lcom/layar/WelcomeSequenceActivity$ViewHolder;
    goto :goto_2

    .line 155
    .restart local v3       #message:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;
    :cond_2
    iget-object v8, v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v9, v3, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;->iconId:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/layar/util/Util;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v8, v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 162
    :cond_3
    iget-object v8, v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, v3, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;->titleId:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/layar/util/Util;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v8, v0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 171
    .end local v0           #holder:Lcom/layar/WelcomeSequenceActivity$ViewHolder;
    .end local v3           #message:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v8, -0x2

    goto/16 :goto_1
.end method

.method private setPrefsToMax()V
    .locals 4

    .prologue
    .line 176
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 177
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "welcome.sequence.last"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 178
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method

.method private showNextScreen()V
    .locals 5

    .prologue
    .line 105
    iget-object v3, p0, Lcom/layar/WelcomeSequenceActivity;->mScreens:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget v3, p0, Lcom/layar/WelcomeSequenceActivity;->mCurrentScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/layar/WelcomeSequenceActivity;->mCurrentScreen:I

    .line 110
    iget-object v3, p0, Lcom/layar/WelcomeSequenceActivity;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 111
    .local v0, count:I
    iget v3, p0, Lcom/layar/WelcomeSequenceActivity;->mCurrentScreen:I

    if-ne v3, v0, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/layar/WelcomeSequenceActivity;->setPrefsToMax()V

    .line 113
    invoke-virtual {p0}, Lcom/layar/WelcomeSequenceActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/layar/WelcomeSequenceActivity;->finish()V

    goto :goto_0

    .line 116
    :cond_2
    iget v3, p0, Lcom/layar/WelcomeSequenceActivity;->mCurrentScreen:I

    const/4 v4, 0x1

    sub-int v4, v0, v4

    if-ne v3, v4, :cond_3

    .line 118
    iget-object v3, p0, Lcom/layar/WelcomeSequenceActivity;->viewNext:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/layar/WelcomeSequenceActivity;->isOnStart:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0901c3

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 120
    iget-object v3, p0, Lcom/layar/WelcomeSequenceActivity;->viewSkip:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_3
    iget-object v3, p0, Lcom/layar/WelcomeSequenceActivity;->mScreens:Ljava/util/ArrayList;

    iget v4, p0, Lcom/layar/WelcomeSequenceActivity;->mCurrentScreen:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;

    .line 124
    .local v2, screenData:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;
    iget-object v3, v2, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;->imageId:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/layar/util/Util;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, drawableId:I
    iget-object v3, p0, Lcom/layar/WelcomeSequenceActivity;->viewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v3, v2, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;->messages:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/layar/WelcomeSequenceActivity;->prepareView(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 119
    .end local v1           #drawableId:I
    .end local v2           #screenData:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;
    :cond_4
    const v4, 0x7f0901c4

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f030068

    invoke-virtual {p0, v1}, Lcom/layar/WelcomeSequenceActivity;->setContentView(I)V

    .line 56
    const v1, 0x7f070053

    invoke-virtual {p0, v1}, Lcom/layar/WelcomeSequenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/layar/WelcomeSequenceActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 58
    const v1, 0x7f07004a

    invoke-virtual {p0, v1}, Lcom/layar/WelcomeSequenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/layar/WelcomeSequenceActivity;->viewImage:Landroid/widget/ImageView;

    .line 60
    const v1, 0x7f0700ec

    invoke-virtual {p0, v1}, Lcom/layar/WelcomeSequenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/layar/WelcomeSequenceActivity;->viewNext:Landroid/widget/Button;

    .line 61
    iget-object v1, p0, Lcom/layar/WelcomeSequenceActivity;->viewNext:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/layar/WelcomeSequenceActivity;->onNextClick()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f0700eb

    invoke-virtual {p0, v1}, Lcom/layar/WelcomeSequenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/WelcomeSequenceActivity;->viewSkip:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/layar/WelcomeSequenceActivity;->viewSkip:Landroid/view/View;

    invoke-direct {p0}, Lcom/layar/WelcomeSequenceActivity;->onSkipClick()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/layar/WelcomeSequenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extras:on_start"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/layar/WelcomeSequenceActivity;->isOnStart:Z

    .line 69
    iget-boolean v1, p0, Lcom/layar/WelcomeSequenceActivity;->isOnStart:Z

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "welcome.sequence.last"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/layar/WelcomeSequenceActivity;->mCurrentScreen:I

    .line 73
    :cond_0
    new-instance v1, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;

    const-string v2, "welcome/welcome.json"

    invoke-direct {v1, p0, p0, v2}, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;-><init>(Lcom/layar/WelcomeSequenceActivity;Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 98
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/layar/WelcomeSequenceActivity;->setPrefsToMax()V

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
