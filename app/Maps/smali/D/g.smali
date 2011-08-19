.class public LD/g;
.super LD/f;


# static fields
.field public static final a:LD/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD/g;

    invoke-direct {v0}, LD/g;-><init>()V

    sput-object v0, LD/g;->a:LD/g;

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

    const v0, 0x13d637

    return v0
.end method
