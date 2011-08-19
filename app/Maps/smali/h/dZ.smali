.class Lh/dZ;
.super Ljava/lang/Object;

# interfaces
.implements Lak/i;


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/dZ;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lh/ci;)V
    .locals 0

    invoke-direct {p0}, Lh/dZ;-><init>()V

    return-void
.end method


# virtual methods
.method public X_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/dZ;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lh/dZ;->a:Z

    return v0
.end method
