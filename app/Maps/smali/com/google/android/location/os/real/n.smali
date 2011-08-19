.class public Lcom/google/android/location/os/real/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static f:Ljava/io/File;


# instance fields
.field private e:Z

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/location/os/real/r;

.field private final i:Lcom/google/android/location/os/real/a;

.field private final j:Lcom/google/android/location/os/real/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/location/os/real/n;->a:Z

    const-string v0, ""

    sput-object v0, Lcom/google/android/location/os/real/n;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/location/os/real/n;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/os/real/r;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/location/os/real/n;->e:Z

    new-instance v0, Lcom/google/android/location/os/real/a;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/a;-><init>(Lcom/google/android/location/os/real/n;Z)V

    iput-object v0, p0, Lcom/google/android/location/os/real/n;->i:Lcom/google/android/location/os/real/a;

    new-instance v0, Lcom/google/android/location/os/real/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/a;-><init>(Lcom/google/android/location/os/real/n;Z)V

    iput-object v0, p0, Lcom/google/android/location/os/real/n;->j:Lcom/google/android/location/os/real/a;

    iput-object p1, p0, Lcom/google/android/location/os/real/n;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/location/os/real/n;->h:Lcom/google/android/location/os/real/r;

    invoke-static {p1}, Lcom/google/android/location/os/real/n;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Locale;Law/e;)Law/e;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/location/os/real/n;->b(Ljava/util/Locale;Law/e;)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 6

    const-class v0, Lcom/google/android/location/os/real/n;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/google/android/location/os/real/n;->f:Ljava/io/File;

    const-string v3, "nlp_GlsPlatformKey"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "GlsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x0

    const-class v0, Lcom/google/android/location/os/real/n;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lp/b;->b()Lp/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/android/location/internal/g;->b:Lcom/google/android/location/internal/g;

    invoke-static {v1, p0}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/location/internal/g;Landroid/content/Context;)Lcom/google/android/location/internal/d;

    move-result-object v1

    iget v1, v1, Lcom/google/android/location/internal/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/os/real/n;->b:Ljava/lang/String;

    new-instance v1, Lz/b;

    invoke-direct {v1, p0}, Lz/b;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lac/m;->a(Lac/m;)V

    const-string v1, "https://www.google.com/loc/m/api"

    sget-boolean v2, Lcom/google/android/location/os/real/n;->a:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "url:google_location_server"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    const-string v3, " "

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "rewrite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    aget-object v1, v2, v1

    :cond_1
    new-instance v2, Lp/a;

    invoke-direct {v2}, Lp/a;-><init>()V

    invoke-virtual {v2, v1}, Lp/a;->a(Ljava/lang/String;)V

    const-string v1, "location"

    invoke-virtual {v2, v1}, Lp/a;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/location/os/real/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lp/a;->c(Ljava/lang/String;)V

    const-string v1, "android"

    invoke-virtual {v2, v1}, Lp/a;->d(Ljava/lang/String;)V

    const-string v1, "gmm"

    invoke-virtual {v2, v1}, Lp/a;->e(Ljava/lang/String;)V

    invoke-static {v2}, Lp/b;->a(Lp/a;)V

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/os/real/n;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/os/real/n;->f:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v1, "android"

    sput-object v1, Lcom/google/android/location/os/real/n;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method static synthetic a(Law/e;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/location/os/real/n;->b(Law/e;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/os/real/n;Law/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/n;->c(Law/e;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/google/android/location/os/real/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/location/os/real/n;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/location/os/real/n;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GlsClient"

    const-string v2, "setPlatformKey(): couldn\'t create directory"

    invoke-static {v1, v2}, Lw/x;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/google/android/location/os/real/n;->f:Ljava/io/File;

    const-string v3, "nlp_GlsPlatformKey"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    sput-object p0, Lcom/google/android/location/os/real/n;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v1, "GlsClient"

    const-string v2, "setPlatformKey(): unable to create platform key file"

    invoke-static {v1, v2}, Lw/x;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_1
    move-exception v1

    :try_start_3
    const-string v1, "GlsClient"

    const-string v2, "setPlatformKey(): unable to write to platform key"

    invoke-static {v1, v2}, Lw/x;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/os/real/n;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/location/os/real/n;->c()Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/util/Locale;Law/e;)Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Lbd/a;->F:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/location/os/real/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/location/os/real/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/android/location/os/real/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILaw/e;)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/os/real/n;)Lcom/google/android/location/os/real/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/n;->h:Lcom/google/android/location/os/real/r;

    return-object v0
.end method

.method private static declared-synchronized b()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-class v0, Lcom/google/android/location/os/real/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/location/os/real/n;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/location/os/real/n;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/google/android/location/os/real/n;->f:Ljava/io/File;

    const-string v3, "nlp_GlsPlatformKey"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    sput-object v2, Lcom/google/android/location/os/real/n;->d:Ljava/lang/String;

    sget-object v1, Lcom/google/android/location/os/real/n;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v4

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Law/e;)V
    .locals 2

    const/4 v1, 0x3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/location/os/real/n;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Law/e;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/location/os/real/n;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Law/e;->b(IZ)V

    iput-boolean v2, p0, Lcom/google/android/location/os/real/n;->e:Z

    :cond_0
    sget-boolean v0, Lcom/google/android/location/os/real/n;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/real/n;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_location_provider_debug"

    invoke-static {v0, v1, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Law/e;->b(IZ)V

    iget-object v0, p0, Lcom/google/android/location/os/real/n;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const/4 v4, 0x5

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Law/e;->a(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c()Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/google/android/location/os/real/n;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/real/n;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_location_provider_debug"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Law/e;Law/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/n;->i:Lcom/google/android/location/os/real/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/a;->a(Law/e;Law/e;)V

    return-void
.end method

.method public b(Law/e;Law/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/n;->j:Lcom/google/android/location/os/real/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/a;->a(Law/e;Law/e;)V

    return-void
.end method
