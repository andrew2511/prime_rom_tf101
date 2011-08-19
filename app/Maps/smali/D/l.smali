.class public LD/l;
.super LD/f;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, LD/f;-><init>()V

    iput p1, p0, LD/l;->a:I

    iput-object p2, p0, LD/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LD/l;->a:I

    return v0
.end method
