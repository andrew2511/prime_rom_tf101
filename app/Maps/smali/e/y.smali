.class Le/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Laa/E;

.field private final b:LF/M;


# direct methods
.method private constructor <init>(Laa/E;LF/M;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/y;->a:Laa/E;

    iput-object p2, p0, Le/y;->b:LF/M;

    return-void
.end method

.method synthetic constructor <init>(Laa/E;LF/M;Le/x;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/y;-><init>(Laa/E;LF/M;)V

    return-void
.end method

.method static synthetic a(Le/y;)Laa/E;
    .locals 1

    iget-object v0, p0, Le/y;->a:Laa/E;

    return-object v0
.end method

.method static synthetic b(Le/y;)LF/M;
    .locals 1

    iget-object v0, p0, Le/y;->b:LF/M;

    return-object v0
.end method
