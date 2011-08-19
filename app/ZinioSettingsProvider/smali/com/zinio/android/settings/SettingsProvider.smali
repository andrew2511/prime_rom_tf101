.class public Lcom/zinio/android/settings/SettingsProvider;
.super Landroid/content/ContentProvider;


# static fields
.field private static a:Landroid/content/UriMatcher;

.field private static b:Z

.field private static c:Landroid/net/Uri;

.field private static d:Landroid/net/Uri;

.field private static e:Landroid/net/Uri;

.field private static f:Landroid/net/Uri;

.field private static g:Landroid/net/Uri;

.field private static h:Landroid/net/Uri;


# instance fields
.field private i:Ljavax/crypto/Cipher;

.field private j:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/zinio/android/settings/SettingsProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.zinio.android.settings.provider"

    const-string v2, "DownloadedService"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/zinio/android/settings/SettingsProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.zinio.android.settings.provider"

    const-string v2, "PreloadedService"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/zinio/android/settings/SettingsProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.zinio.android.settings.provider"

    const-string v2, "BaseUrl"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/zinio/android/settings/SettingsProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.zinio.android.settings.provider"

    const-string v2, "LibLayout"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/zinio/android/settings/SettingsProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.zinio.android.settings.provider"

    const-string v2, "IgnoreMinReqs"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "content://com.zinio.android.settings.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/android/settings/SettingsProvider;->c:Landroid/net/Uri;

    const-string v1, "DownloadedService"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/android/settings/SettingsProvider;->d:Landroid/net/Uri;

    sget-object v0, Lcom/zinio/android/settings/SettingsProvider;->c:Landroid/net/Uri;

    const-string v1, "PreloadedService"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/android/settings/SettingsProvider;->e:Landroid/net/Uri;

    sget-object v0, Lcom/zinio/android/settings/SettingsProvider;->c:Landroid/net/Uri;

    const-string v1, "BaseUrl"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/android/settings/SettingsProvider;->f:Landroid/net/Uri;

    sget-object v0, Lcom/zinio/android/settings/SettingsProvider;->c:Landroid/net/Uri;

    const-string v1, "LibLayout"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/android/settings/SettingsProvider;->g:Landroid/net/Uri;

    sget-object v0, Lcom/zinio/android/settings/SettingsProvider;->c:Landroid/net/Uri;

    const-string v1, "IgnoreMinReqs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/android/settings/SettingsProvider;->h:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/android/settings/SettingsProvider;->i:Ljavax/crypto/Cipher;

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/database/MatrixCursor;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    aput-object v1, v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v1, p0

    goto :goto_0

    :cond_1
    aput-object v4, v0, v3

    goto :goto_1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/zinio/android/settings/SettingsProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri IllegalArgument:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "vnd.android.cursor.item/vnd.zinio"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.zinio"

    goto :goto_0

    :pswitch_2
    const-string v0, "vnd.android.cursor.item/vnd.zinio"

    goto :goto_0

    :pswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.zinio"

    goto :goto_0

    :pswitch_4
    const-string v0, "vnd.android.cursor.item/vnd.zinio"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/zinio/android/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/zinio/android/settings/SettingsProvider;->b:Z

    invoke-virtual {p0}, Lcom/zinio/android/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DebugFile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/android/settings/SettingsProvider;->j:Landroid/content/SharedPreferences;

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "Settings Provider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingProvider being queried: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/zinio/android/settings/SettingsProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri IllegalArgument:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "DownloadedServiceName"

    aput-object v1, v0, v3

    sget-boolean v1, Lcom/zinio/android/settings/SettingsProvider;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zinio/android/settings/SettingsProvider;->j:Landroid/content/SharedPreferences;

    const-string v2, "downloaded.app.service.name"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/zinio/android/settings/SettingsProvider;->a(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zinio/android/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const-string v1, "PreloadedServiceName"

    aput-object v1, v0, v3

    sget-boolean v1, Lcom/zinio/android/settings/SettingsProvider;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zinio/android/settings/SettingsProvider;->j:Landroid/content/SharedPreferences;

    const-string v2, "preloaded.app.service.name"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/zinio/android/settings/SettingsProvider;->a(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/zinio/android/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_2
    const-string v1, "BaseURL"

    aput-object v1, v0, v3

    sget-boolean v1, Lcom/zinio/android/settings/SettingsProvider;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zinio/android/settings/SettingsProvider;->j:Landroid/content/SharedPreferences;

    const-string v2, "base.url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/zinio/android/settings/SettingsProvider;->a(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/zinio/android/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_3
    const-string v1, "IgnoreMinimumRequirements"

    aput-object v1, v0, v3

    sget-boolean v1, Lcom/zinio/android/settings/SettingsProvider;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zinio/android/settings/SettingsProvider;->j:Landroid/content/SharedPreferences;

    const-string v2, "ignore.minimum.requirements"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/zinio/android/settings/SettingsProvider;->a(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/zinio/android/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :pswitch_4
    const-string v1, "LibraryLayout"

    aput-object v1, v0, v3

    sget-boolean v1, Lcom/zinio/android/settings/SettingsProvider;->b:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zinio/android/settings/SettingsProvider;->j:Landroid/content/SharedPreferences;

    const-string v2, "library.layout"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/zinio/android/settings/SettingsProvider;->a(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/zinio/android/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/zinio/android/settings/SettingsProvider;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zinio/android/settings/SettingsProvider;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/zinio/android/settings/SettingsProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri IllegalArgument:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "DownloadedServiceName"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloaded.app.service.name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    const-string v1, "PreloadedServiceName"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preloaded.app.service.name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    const-string v1, "BaseURL"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "base.url"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    const-string v1, "LibraryLayout"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "library.layout"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0

    :pswitch_4
    const-string v1, "IgnoreMinimumRequirements"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore.minimum.requirements"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
