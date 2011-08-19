.class public abstract enum Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
.super Ljava/lang/Enum;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract$Volumes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Access"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field public static final enum FREE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field public static final enum NO_VIEW:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field public static final enum PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field public static final enum SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1367
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$1;

    const-string v1, "NO_VIEW"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->NO_VIEW:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 1372
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$2;

    const-string v1, "SAMPLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 1377
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$3;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->FREE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 1390
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$4;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 1365
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->NO_VIEW:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->FREE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->$VALUES:[Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/apps/books/provider/BooksContract$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1365
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .locals 1
    .parameter "name"

    .prologue
    .line 1365
    const-class v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .locals 1

    .prologue
    .line 1365
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->$VALUES:[Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    return-object v0
.end method


# virtual methods
.method public abstract shouldHonorTransition(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;)Z
.end method
