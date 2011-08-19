.class public final Lcom/google/android/location/internal/d;
.super Ljava/lang/Object;


# static fields
.field public static final f:Lcom/google/android/location/internal/d;


# instance fields
.field public final a:Lcom/google/android/location/internal/g;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v2, -0x1

    new-instance v0, Lcom/google/android/location/internal/d;

    sget-object v1, Lcom/google/android/location/internal/g;->c:Lcom/google/android/location/internal/g;

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/internal/d;-><init>(Lcom/google/android/location/internal/g;IIILandroid/content/Intent;)V

    sput-object v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/location/internal/d;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/internal/g;IIILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/internal/d;->a:Lcom/google/android/location/internal/g;

    iput p2, p0, Lcom/google/android/location/internal/d;->b:I

    iput p3, p0, Lcom/google/android/location/internal/d;->c:I

    iput p4, p0, Lcom/google/android/location/internal/d;->d:I

    iput-object p5, p0, Lcom/google/android/location/internal/d;->e:Landroid/content/Intent;

    return-void
.end method

.method public static a(Lcom/google/android/location/internal/g;Landroid/content/Context;)Lcom/google/android/location/internal/d;
    .locals 6

    sget-object v0, Lcom/google/android/location/internal/g;->c:Lcom/google/android/location/internal/g;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/location/internal/d;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/location/internal/g;->d:Ljava/lang/String;

    const-string v2, "com.google.android.location.internal.server.NetworkLocationService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "minProtocolVersion"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v1, "maxProtocolVersion"

    const/high16 v3, -0x8000

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v1, "releaseVersion"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Landroid/content/Intent;

    const-string v1, "nlpServiceIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/location/internal/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/internal/d;-><init>(Lcom/google/android/location/internal/g;IIILandroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "NlpVersionInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/location/internal/d;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/location/internal/d;

    goto :goto_0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget v0, p0, Lcom/google/android/location/internal/d;->b:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/location/internal/d;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/internal/d;->a:Lcom/google/android/location/internal/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minProtocolVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/internal/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxProtocolVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/internal/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " releaseVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/internal/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
