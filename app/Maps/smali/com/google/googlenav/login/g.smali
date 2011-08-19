.class public abstract Lcom/google/googlenav/login/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/login/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;

    invoke-direct {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;-><init>()V

    sput-object v0, Lcom/google/googlenav/login/g;->a:Lcom/google/googlenav/login/g;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lcom/google/googlenav/login/g;
    .locals 1

    sget-object v0, Lcom/google/googlenav/login/g;->a:Lcom/google/googlenav/login/g;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;Lcom/google/googlenav/login/p;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()V
.end method

.method public abstract d()Z
.end method
