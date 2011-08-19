.class public abstract Lcom/google/googlenav/android/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/android/x;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/google/googlenav/android/x;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/googlenav/android/x;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/x;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b()Lcom/google/googlenav/android/x;
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/x;->a:Lcom/google/googlenav/android/x;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.google.googlenav.android.MonkeyManagerSdk8"

    :goto_0
    invoke-static {v0}, Lcom/google/googlenav/android/x;->a(Ljava/lang/String;)Lcom/google/googlenav/android/x;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/x;->a:Lcom/google/googlenav/android/x;

    :cond_0
    sget-object v0, Lcom/google/googlenav/android/x;->a:Lcom/google/googlenav/android/x;

    return-object v0

    :cond_1
    const-string v0, "com.google.googlenav.android.MonkeyManagerSdk7"

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Z
.end method
