.class public abstract Lcom/android/vending/util/GservicesValue;
.super Ljava/lang/Object;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/GservicesValue$GservicesReaderImpl;,
        Lcom/android/vending/util/GservicesValue$GservicesReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sGservicesReader:Lcom/android/vending/util/GservicesValue$GservicesReader;


# instance fields
.field protected final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mKey:Ljava/lang/String;

.field private mOverride:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/util/GservicesValue;->sGservicesReader:Lcom/android/vending/util/GservicesValue$GservicesReader;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/android/vending/util/GservicesValue;,"Lcom/android/vending/util/GservicesValue<TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/util/GservicesValue;->mOverride:Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/android/vending/util/GservicesValue;->mKey:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/vending/util/GservicesValue;->mDefaultValue:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method static synthetic access$100()Lcom/android/vending/util/GservicesValue$GservicesReader;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/vending/util/GservicesValue;->sGservicesReader:Lcom/android/vending/util/GservicesValue$GservicesReader;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    new-instance v0, Lcom/android/vending/util/GservicesValue$GservicesReaderImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vending/util/GservicesValue$GservicesReaderImpl;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/vending/util/GservicesValue;->sGservicesReader:Lcom/android/vending/util/GservicesValue$GservicesReader;

    .line 22
    return-void
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/vending/util/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/android/vending/util/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/android/vending/util/GservicesValue$3;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/util/GservicesValue$3;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/vending/util/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/android/vending/util/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/android/vending/util/GservicesValue$2;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/util/GservicesValue$2;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/vending/util/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/android/vending/util/GservicesValue$4;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/util/GservicesValue$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Z)Lcom/android/vending/util/GservicesValue;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/vending/util/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/android/vending/util/GservicesValue$1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vending/util/GservicesValue$1;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/android/vending/util/GservicesValue;,"Lcom/android/vending/util/GservicesValue<TT;>;"
    iget-object v0, p0, Lcom/android/vending/util/GservicesValue;->mOverride:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/vending/util/GservicesValue;->mOverride:Ljava/lang/Object;

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/util/GservicesValue;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/vending/util/GservicesValue;->retrieve(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
