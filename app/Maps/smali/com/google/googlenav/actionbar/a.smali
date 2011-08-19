.class public abstract Lcom/google/googlenav/actionbar/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/actionbar/a;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/actionbar/a;
    .locals 1

    sget-object v0, Lcom/google/googlenav/actionbar/a;->a:Lcom/google/googlenav/actionbar/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/android/Z;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.google.googlenav.actionbar.ActionBarControllerSdk11"

    :goto_0
    invoke-static {v0}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/actionbar/a;->a:Lcom/google/googlenav/actionbar/a;

    :cond_0
    sget-object v0, Lcom/google/googlenav/actionbar/a;->a:Lcom/google/googlenav/actionbar/a;

    return-object v0

    :cond_1
    const-string v0, "com.google.googlenav.actionbar.ActionBarControllerSdk9"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/googlenav/actionbar/a;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/googlenav/actionbar/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/actionbar/a;
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


# virtual methods
.method public abstract a(Landroid/app/Dialog;)I
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract a(Lcom/google/googlenav/ui/view/android/a;Lcom/google/googlenav/ui/aT;)V
.end method

.method public abstract b(Landroid/app/Dialog;)V
.end method

.method public abstract b(Landroid/view/View;)Z
.end method

.method public abstract c(Landroid/view/View;)Z
.end method
