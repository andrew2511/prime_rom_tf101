.class public Lcom/google/android/location/localizer/MetricModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/localizer/MetricModel;->a:Ljava/util/List;

    return-void
.end method

.method static a(Law/e;)Lcom/google/android/location/localizer/MetricModel;
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Law/e;->i(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v4, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/location/localizer/DistanceDist;->a(Law/e;)Lcom/google/android/location/localizer/DistanceDist;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/location/localizer/MetricModel;

    invoke-direct {v0, v1}, Lcom/google/android/location/localizer/MetricModel;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static a(Ljava/io/InputStream;)Lcom/google/android/location/localizer/MetricModel;
    .locals 4

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    new-instance v1, Law/e;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    :try_start_0
    invoke-virtual {v1, p0}, Law/e;->a(Ljava/io/InputStream;)Law/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    invoke-static {v1}, Lcom/google/android/location/localizer/MetricModel;->a(Law/e;)Lcom/google/android/location/localizer/MetricModel;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse stream to load metric model. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    throw v0

    :catch_1
    move-exception v1

    const-string v2, "MetricModel"

    const-string v3, "Unable to close metric model stream"

    invoke-static {v2, v3, v1}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "MetricModel"

    const-string v3, "Unable to close metric model stream"

    invoke-static {v2, v3, v0}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/localizer/MetricModel;->a:Ljava/util/List;

    return-object v0
.end method
