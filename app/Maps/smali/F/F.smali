.class LF/F;
.super Ljava/lang/Object;


# instance fields
.field private final a:LF/M;

.field private final b:I


# direct methods
.method private constructor <init>(LF/M;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/F;->a:LF/M;

    iput p2, p0, LF/F;->b:I

    return-void
.end method

.method synthetic constructor <init>(LF/M;ILF/H;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LF/F;-><init>(LF/M;I)V

    return-void
.end method

.method static synthetic a(LF/F;)LF/M;
    .locals 1

    iget-object v0, p0, LF/F;->a:LF/M;

    return-object v0
.end method

.method static synthetic b(LF/F;)I
    .locals 1

    iget v0, p0, LF/F;->b:I

    return v0
.end method
