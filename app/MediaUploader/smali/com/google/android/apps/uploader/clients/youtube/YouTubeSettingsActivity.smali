.class public Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;
.super Lcom/google/android/apps/uploader/clients/SettingsActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/RadioButton;

.field private i:Landroid/widget/RadioButton;

.field private j:Landroid/widget/RadioButton;

.field private k:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v1, 0x7f020006

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    return-void

    .line 131
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 132
    :cond_1
    const v1, 0x7f020007

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const v1, 0x7f060040

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_1
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const v1, 0x7f060041

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    const v1, 0x7f060042

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 253
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 241
    :pswitch_1
    const v0, 0x7f06003d

    goto :goto_0

    .line 243
    :pswitch_2
    const v0, 0x7f050006

    goto :goto_0

    .line 245
    :pswitch_3
    const v0, 0x7f06004e

    goto :goto_0

    .line 247
    :pswitch_4
    const v0, 0x7f060051

    goto :goto_0

    .line 249
    :pswitch_5
    const v0, 0x7f060052

    goto :goto_0

    .line 251
    :pswitch_6
    const v0, 0x7f060053

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected final a()Landroid/view/View;
    .locals 9

    .prologue
    const v4, 0x7f08001f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 73
    const v0, 0x7f080008

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f080017

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->b:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f080018

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->e:Landroid/widget/EditText;

    .line 76
    const v0, 0x7f080019

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 77
    const v0, 0x7f08001a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->c:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f08001b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->d:Landroid/view/View;

    .line 79
    const v0, 0x7f080020

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->f:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f08001c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->g:Landroid/widget/EditText;

    .line 81
    const v0, 0x7f08001d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h:Landroid/widget/RadioButton;

    .line 82
    const v0, 0x7f08001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/RadioButton;

    .line 83
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->j:Landroid/widget/RadioButton;

    .line 84
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 85
    const v1, 0x7f080021

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->k:Landroid/widget/CheckBox;

    .line 86
    const v1, 0x7f080022

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->g()I

    move-result v1

    if-le v1, v8, :cond_0

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a:Landroid/widget/TextView;

    const v4, 0x7f06003f

    invoke-virtual {p0, v4}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->j()V

    .line 97
    invoke-virtual {p0, v7}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    const-string v4, "details_expanded"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a(Z)V

    .line 100
    new-instance v4, Lcom/google/android/apps/uploader/clients/youtube/b;

    invoke-direct {v4, p0}, Lcom/google/android/apps/uploader/clients/youtube/b;-><init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V

    .line 106
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    new-instance v3, Lcom/google/android/apps/uploader/clients/youtube/c;

    invoke-direct {v3, p0}, Lcom/google/android/apps/uploader/clients/youtube/c;-><init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V

    .line 116
    iget-object v4, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    iget-object v4, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    const-string v3, "last_access"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 121
    iget-object v4, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h:Landroid/widget/RadioButton;

    if-nez v3, :cond_1

    move v5, v8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 122
    iget-object v4, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/RadioButton;

    if-ne v3, v8, :cond_2

    move v5, v8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 123
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    move v3, v8

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->k:Landroid/widget/CheckBox;

    const-string v3, "last_location"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 127
    return-object v2

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a:Landroid/widget/TextView;

    const v4, 0x7f06003e

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    move v5, v7

    .line 121
    goto :goto_1

    :cond_2
    move v5, v7

    .line 122
    goto :goto_2

    :cond_3
    move v3, v7

    .line 123
    goto :goto_3
.end method

.method protected final a(Lcom/google/android/apps/uploader/e;)Ljava/lang/String;
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const-wide v10, 0x3f50624dd2f1a9fcL

    const/4 v3, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/e;->e()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/e;->e()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f050001

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v4, v1}, Lcom/google/android/apps/uploader/clients/youtube/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f050004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v4, 0x7f050005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f050003

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f06004d

    invoke-virtual {p0, v6}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v4, v5, v6}, Lcom/google/android/apps/uploader/clients/youtube/a;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 199
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v2, 0x7f06004c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/uploader/clients/youtube/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 206
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/e;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "latitude"

    aput-object v4, v2, v13

    const/4 v4, 0x1

    const-string v5, "longitude"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "latitude"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "longitude"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v12, :cond_5

    if-eq v2, v12, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Landroid/location/Location;

    const-string v5, "VideoColumns"

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v10

    if-gez v1, :cond_4

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v10

    if-gez v1, :cond_4

    move-object v1, v3

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    move-object v0, v1

    :goto_1
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got video location "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v1, v13}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_2
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got current location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    if-nez v0, :cond_1

    .line 208
    new-instance v1, Lcom/google/android/apps/uploader/clients/youtube/d;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/youtube/d;-><init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    move-object v6, v0

    .line 217
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/e;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/uploader/clients/youtube/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :cond_2
    const-string v0, "MediaUploader"

    const-string v1, "No location manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    move-object v1, v4

    goto :goto_0

    :cond_5
    move-object v1, v3

    goto/16 :goto_0

    :cond_6
    move-object v0, v3

    goto/16 :goto_1

    :cond_7
    move-object v6, v3

    goto :goto_3
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b()V

    .line 155
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->j()V

    .line 156
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string v0, "http://uploads.gdata.youtube.com/resumable/feeds/api/users/default/uploads"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "youtube"

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 228
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_0
    return-object v0
.end method

.method protected final f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 166
    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 168
    const-string v2, "details_expanded"

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    :goto_1
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v2, "last_access"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v0, "last_location"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v3, v4

    .line 168
    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v1, "kr"

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getApplication()Landroid/app/Application;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v6

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const-string v1, "MediaUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Country restricted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_3
    if-eqz v0, :cond_0

    .line 62
    const v0, 0x7f06004f

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->finish()V

    .line 66
    :cond_0
    return-void

    :cond_1
    move v3, v5

    .line 61
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_3
.end method
