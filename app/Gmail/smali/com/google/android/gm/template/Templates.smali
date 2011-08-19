.class public Lcom/google/android/gm/template/Templates;
.super Ljava/lang/Object;
.source "Templates.java"


# static fields
.field private static final sTemplateCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/template/Template;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/template/Templates;->sTemplateCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get(Ljava/lang/String;)Lcom/google/android/gm/template/Template;
    .locals 1
    .parameter "name"

    .prologue
    .line 66
    sget-object v0, Lcom/google/android/gm/template/Templates;->sTemplateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/gm/template/Template;

    return-object p0
.end method

.method public static final install(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/gm/template/Template;
    .locals 2
    .parameter "name"
    .parameter "source"

    .prologue
    .line 42
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {p0, v0}, Lcom/google/android/gm/template/Templates;->install(Ljava/lang/String;Ljava/io/Reader;)Lcom/google/android/gm/template/Template;

    move-result-object v0

    return-object v0
.end method

.method public static final install(Ljava/lang/String;Ljava/io/Reader;)Lcom/google/android/gm/template/Template;
    .locals 2
    .parameter "name"
    .parameter "source"

    .prologue
    .line 53
    new-instance v1, Lcom/google/android/gm/template/Parser;

    invoke-direct {v1, p1}, Lcom/google/android/gm/template/Parser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lcom/google/android/gm/template/Parser;->parse()Lcom/google/android/gm/template/Template;

    move-result-object v0

    .line 54
    .local v0, template:Lcom/google/android/gm/template/Template;
    invoke-virtual {v0, p0}, Lcom/google/android/gm/template/Template;->setName(Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/google/android/gm/template/Templates;->sTemplateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method

.method public static final install(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/template/Template;
    .locals 1
    .parameter "name"
    .parameter "source"

    .prologue
    .line 31
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gm/template/Templates;->install(Ljava/lang/String;Ljava/io/Reader;)Lcom/google/android/gm/template/Template;

    move-result-object v0

    return-object v0
.end method

.method static final reset()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/google/android/gm/template/Templates;->sTemplateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 86
    return-void
.end method

.method public static final uninstall(Ljava/lang/String;)Lcom/google/android/gm/template/Template;
    .locals 1
    .parameter "name"

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/gm/template/Templates;->sTemplateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/gm/template/Template;

    return-object p0
.end method
