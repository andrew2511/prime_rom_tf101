.class public LD/h;
.super LD/f;


# static fields
.field public static final a:LD/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD/h;

    invoke-direct {v0}, LD/h;-><init>()V

    sput-object v0, LD/h;->a:LD/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LD/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x13d65b

    return v0
.end method
