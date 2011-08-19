.class public Lb/h;
.super Lb/k;


# static fields
.field public static final a:Lb/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/h;

    invoke-direct {v0}, Lb/h;-><init>()V

    sput-object v0, Lb/h;->a:Lb/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/k;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "START"

    return-object v0
.end method
