.class public Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;
.super Lcom/google/android/apps/uploader/clients/SettingsActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/apps/uploader/UploaderApplication;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Spinner;

.field private d:Landroid/database/Cursor;

.field private e:Landroid/widget/SimpleCursorAdapter;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 249
    if-eqz p1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    move v2, v4

    .line 251
    :goto_0
    if-ge v2, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 253
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 261
    :goto_1
    return-void

    .line 251
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->e:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->d:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->a:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->d:Landroid/database/Cursor;

    .line 197
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/t;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/t;-><init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 265
    packed-switch p1, :pswitch_data_0

    .line 279
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 267
    :pswitch_1
    const/high16 v0, 0x7f06

    goto :goto_0

    .line 269
    :pswitch_2
    const/high16 v0, 0x7f05

    goto :goto_0

    .line 271
    :pswitch_3
    const v0, 0x7f060007

    goto :goto_0

    .line 273
    :pswitch_4
    const v0, 0x7f060011

    goto :goto_0

    .line 275
    :pswitch_5
    const v0, 0x7f060012

    goto :goto_0

    .line 277
    :pswitch_6
    const v0, 0x7f060013

    goto :goto_0

    .line 265
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
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 81
    const v0, 0x7f080008

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->g()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 83
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    const v0, 0x7f08000a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->b:Landroid/widget/EditText;

    .line 92
    const v0, 0x7f08000c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c:Landroid/widget/Spinner;

    .line 94
    const v0, 0x7f08000d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 95
    new-instance v1, Lcom/google/android/apps/uploader/clients/picasa/r;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/picasa/r;-><init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0, v7}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_album"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->f:Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->d:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v7

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->e:Landroid/widget/SimpleCursorAdapter;

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->e:Landroid/widget/SimpleCursorAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setDropDownViewResource(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->e:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/android/apps/uploader/clients/picasa/s;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/picasa/s;-><init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 123
    return-object v6

    .line 87
    :cond_0
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/apps/uploader/e;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/e;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/uploader/clients/picasa/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 184
    invoke-super {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b()V

    .line 186
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->j()V

    .line 188
    const-string v0, "MediaUploader"

    const-string v1, "Getting album list."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/c;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploaderApplication;->g()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/c;-><init>(Lorg/apache/http/client/HttpClient;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    const-string v3, "lh2"

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Ljava/lang/String;)Lcom/google/android/apps/uploader/b;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/uploader/clients/picasa/u;

    invoke-direct {v3, p0}, Lcom/google/android/apps/uploader/clients/picasa/u;-><init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/uploader/clients/picasa/o;->a(Ljava/lang/String;Lcom/google/android/apps/uploader/b;Lcom/google/android/apps/uploader/clients/picasa/p;)V

    .line 189
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    const-string v0, "0"

    .line 129
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    .line 132
    if-eqz p0, :cond_0

    .line 133
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string v0, "default"

    .line 141
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://picasaweb.google.com/data/feed/tiny/user/default/albumid/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "lh2"

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    return-object v0
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_album"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 73
    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->a(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->a()V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->onDestroy()V

    .line 175
    return-void
.end method
