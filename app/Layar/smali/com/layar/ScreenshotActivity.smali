.class public Lcom/layar/ScreenshotActivity;
.super Lcom/layar/OurActivity;
.source "ScreenshotActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_SAVE_TO_LIBRARY:I = 0x1

.field private static final ACTION_SEND_BY_EMAIL:I = 0x0

.field private static final ACTION_SHARE:I = 0x2

.field public static final EXTRAS_HOSTED_SHARE_TEXT:Ljava/lang/String; = "hosted:text"

.field public static final EXTRAS_HOSTED_SHARE_URL:Ljava/lang/String; = "hosted:url"

.field public static final EXTRAS_LAYER_NAME:Ljava/lang/String; = "layer"

.field public static final EXTRAS_PATH:Ljava/lang/String; = "path"

.field public static final EXTRAS_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mImage:Landroid/graphics/drawable/BitmapDrawable;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private savedToLibrary:Z

.field private uri:Landroid/net/Uri;

.field private viewScreenshot:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/layar/ScreenshotActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/ScreenshotActivity;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/layar/OurActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/ScreenshotActivity;->savedToLibrary:Z

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ScreenshotActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/layar/ScreenshotActivity;->sendEmail()V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/ScreenshotActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/layar/ScreenshotActivity;->savedToLibrary:Z

    return-void
.end method

.method static synthetic access$2(Lcom/layar/ScreenshotActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/layar/ScreenshotActivity;->share()V

    return-void
.end method

.method private clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/layar/ScreenshotActivity;->viewScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v0, p0, Lcom/layar/ScreenshotActivity;->mImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    iput-object v1, p0, Lcom/layar/ScreenshotActivity;->mImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 165
    return-void
.end method

.method private delete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/layar/ScreenshotActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/ScreenshotActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/layar/ScreenshotActivity;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 121
    return-void
.end method

.method private sendEmail()V
    .locals 8

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/layar/ScreenshotActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 191
    .local v0, i:Landroid/content/Intent;
    const v6, 0x7f0900b8

    invoke-virtual {p0, v6}, Lcom/layar/ScreenshotActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, subject:Ljava/lang/String;
    const v6, 0x7f0900b9

    invoke-virtual {p0, v6}, Lcom/layar/ScreenshotActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, message:Ljava/lang/String;
    const-string v6, "layer"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    const-string v6, "layer"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, layer:Ljava/lang/String;
    const-string v6, "title"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f0900b6

    invoke-virtual {p0, v6}, Lcom/layar/ScreenshotActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    const-string v6, "%title%"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    const v6, 0x7f0900b7

    invoke-virtual {p0, v6}, Lcom/layar/ScreenshotActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    const-string v6, "%name%"

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .end local v1           #layer:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v3, send:Landroid/content/Intent;
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v6, "android.intent.extra.STREAM"

    iget-object v7, p0, Lcom/layar/ScreenshotActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    const-string v6, "plain/text"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v3}, Lcom/layar/ScreenshotActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    const/4 v6, 0x0

    sput-boolean v6, Lcom/layar/Layar3DActivity;->SCREENSHOT_MODE:Z

    .line 213
    return-void
.end method

.method private share()V
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/layar/ScreenshotActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 170
    .local v0, baseIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/layar/ShareSocialActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "layer:name"

    .line 172
    const-string v3, "layer"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v2, "layer:title"

    .line 174
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v2, "screen:titleId"

    const v3, 0x7f090099

    .line 175
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v2, "hosted:url"

    .line 178
    const-string v3, "hosted:url"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v2, "hosted:text"

    .line 180
    const-string v3, "hosted:text"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v2, "layer:imageUri"

    iget-object v3, p0, Lcom/layar/ScreenshotActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/layar/ScreenshotActivity;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    const-string v2, "layer:imagePath"

    iget-object v3, p0, Lcom/layar/ScreenshotActivity;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    :cond_0
    const-string v2, "share:type"

    const-string v3, "screenshot"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v1}, Lcom/layar/ScreenshotActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method private showUseActions()V
    .locals 7

    .prologue
    .line 124
    iget-object v2, p0, Lcom/layar/ScreenshotActivity;->mItems:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/layar/ScreenshotActivity;->mItems:Ljava/util/ArrayList;

    .line 126
    iget-object v2, p0, Lcom/layar/ScreenshotActivity;->mItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;

    .line 127
    const/4 v4, 0x0

    const v5, 0x7f0900c0

    const v6, 0x7f02008b

    invoke-direct {v3, v4, v5, v6}, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;-><init>(III)V

    .line 126
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v2, p0, Lcom/layar/ScreenshotActivity;->mItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;

    .line 129
    const/4 v4, 0x1

    const v5, 0x7f0900c1

    const v6, 0x7f0200b8

    invoke-direct {v3, v4, v5, v6}, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;-><init>(III)V

    .line 128
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/layar/ScreenshotActivity;->mItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;

    .line 131
    const/4 v4, 0x2

    const v5, 0x7f090020

    const v6, 0x7f02010b

    invoke-direct {v3, v4, v5, v6}, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;-><init>(III)V

    .line 130
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/layar/ScreenshotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09016b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    new-instance v2, Lcom/layar/adapters/CustomAlertDialogAdapter;

    .line 138
    iget-object v3, p0, Lcom/layar/ScreenshotActivity;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/layar/adapters/CustomAlertDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v3, Lcom/layar/ScreenshotActivity$1;

    invoke-direct {v3, p0}, Lcom/layar/ScreenshotActivity$1;-><init>(Lcom/layar/ScreenshotActivity;)V

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 158
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 159
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    :pswitch_0
    return-void

    .line 96
    :pswitch_1
    invoke-direct {p0}, Lcom/layar/ScreenshotActivity;->showUseActions()V

    goto :goto_0

    .line 99
    :pswitch_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/layar/Layar3DActivity;->SCREENSHOT_MODE:Z

    .line 100
    invoke-direct {p0}, Lcom/layar/ScreenshotActivity;->delete()V

    .line 101
    invoke-virtual {p0}, Lcom/layar/ScreenshotActivity;->finish()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x7f070005
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/layar/ScreenshotActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/layar/ScreenshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/layar/ScreenshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Lcom/layar/ScreenshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/layar/ScreenshotActivity;->viewScreenshot:Landroid/widget/ImageView;

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/layar/ScreenshotActivity;->clean()V

    .line 218
    invoke-super {p0}, Lcom/layar/OurActivity;->onDestroy()V

    .line 220
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 108
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/layar/ScreenshotActivity;->savedToLibrary:Z

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/layar/Layar3DActivity;->SCREENSHOT_MODE:Z

    .line 110
    invoke-direct {p0}, Lcom/layar/ScreenshotActivity;->delete()V

    .line 111
    invoke-virtual {p0}, Lcom/layar/ScreenshotActivity;->finish()V

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/layar/OurActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 68
    invoke-super {p0}, Lcom/layar/OurActivity;->onStart()V

    .line 70
    invoke-virtual {p0}, Lcom/layar/ScreenshotActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 71
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/ScreenshotActivity;->uri:Landroid/net/Uri;

    .line 72
    const-string v3, "path"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/ScreenshotActivity;->path:Ljava/lang/String;

    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/layar/ScreenshotActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/layar/ScreenshotActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 77
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/layar/ScreenshotActivity;->mImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 78
    iget-object v3, p0, Lcom/layar/ScreenshotActivity;->viewScreenshot:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/layar/ScreenshotActivity;->mImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 90
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 80
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {p0}, Lcom/layar/ScreenshotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 81
    const v4, 0x7f090037

    const/4 v5, 0x1

    .line 80
    invoke-static {v3, v4, v5}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/layar/ui/SmartToast;->show()V

    .line 82
    invoke-direct {p0}, Lcom/layar/ScreenshotActivity;->delete()V

    .line 83
    const/4 v3, 0x1

    sput-boolean v3, Lcom/layar/Layar3DActivity;->SCREENSHOT_MODE:Z

    .line 84
    invoke-virtual {p0}, Lcom/layar/ScreenshotActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 86
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/layar/ScreenshotActivity;->TAG:Ljava/lang/String;

    const-string v4, "Could not read screenshot image"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 87
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 88
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 89
    throw v3
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method
