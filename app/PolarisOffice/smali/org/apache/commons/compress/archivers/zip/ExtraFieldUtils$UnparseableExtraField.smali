.class public final Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;
.super Ljava/lang/Object;
.source "ExtraFieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnparseableExtraField"
.end annotation


# static fields
.field public static final READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField; = null

.field public static final READ_KEY:I = 0x2

.field public static final SKIP:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField; = null

.field public static final SKIP_KEY:I = 0x1

.field public static final THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final THROW_KEY:I


# instance fields
.field private final key:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 284
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->SKIP:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 291
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "k"

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    .line 298
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    return v0
.end method
