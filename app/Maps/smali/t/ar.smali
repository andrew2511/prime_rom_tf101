.class Lt/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lt/A;


# instance fields
.field private a:LG/u;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lt/R;)V
    .locals 0

    invoke-direct {p0}, Lt/ar;-><init>()V

    return-void
.end method

.method static synthetic a(Lt/ar;)LG/u;
    .locals 1

    iget-object v0, p0, Lt/ar;->a:LG/u;

    return-object v0
.end method


# virtual methods
.method public a(LG/w;ILG/u;)V
    .locals 0

    if-nez p2, :cond_0

    iput-object p3, p0, Lt/ar;->a:LG/u;

    :cond_0
    return-void
.end method
