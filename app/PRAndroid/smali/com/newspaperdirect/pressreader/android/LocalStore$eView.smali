.class public final enum Lcom/newspaperdirect/pressreader/android/LocalStore$eView;
.super Ljava/lang/Enum;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "eView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newspaperdirect/pressreader/android/LocalStore$eView;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CategoryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

.field private static final synthetic ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

.field public static final enum NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

.field public static final enum SupplementList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    const-string v1, "CategoryList"

    invoke-direct {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->CategoryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    .line 103
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    const-string v1, "NewspaperList"

    invoke-direct {v0, v1, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    .line 104
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    const-string v1, "SupplementList"

    invoke-direct {v0, v1, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->SupplementList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->CategoryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->SupplementList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    aput-object v1, v0, v4

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/LocalStore$eView;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    return-object p0
.end method

.method public static values()[Lcom/newspaperdirect/pressreader/android/LocalStore$eView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    array-length v1, v0

    new-array v2, v1, [Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
