.class public Le/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:[LF/y;


# direct methods
.method public constructor <init>([LF/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m;->a:[LF/y;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Le/m;->a:[LF/y;

    array-length v0, v0

    return v0
.end method

.method public a(I)LF/y;
    .locals 1

    iget-object v0, p0, Le/m;->a:[LF/y;

    aget-object v0, v0, p1

    return-object v0
.end method
