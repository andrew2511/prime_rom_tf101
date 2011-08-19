.class Ljava/util/jar/JarFile$1JarFileEnumerator;
.super Ljava/lang/Object;
.source "JarFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JarFileEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/util/jar/JarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field jf:Ljava/util/jar/JarFile;

.field final synthetic this$0:Ljava/util/jar/JarFile;

.field ze:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;Ljava/util/jar/JarFile;)V
    .registers 4
    .parameter
    .parameter
    .parameter "jf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;",
            "Ljava/util/jar/JarFile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, zenum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    iput-object p1, p0, Ljava/util/jar/JarFile$1JarFileEnumerator;->this$0:Ljava/util/jar/JarFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p2, p0, Ljava/util/jar/JarFile$1JarFileEnumerator;->ze:Ljava/util/Enumeration;

    .line 244
    iput-object p3, p0, Ljava/util/jar/JarFile$1JarFileEnumerator;->jf:Ljava/util/jar/JarFile;

    .line 245
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Ljava/util/jar/JarFile$1JarFileEnumerator;->ze:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Ljava/util/jar/JarFile$1JarFileEnumerator;->nextElement()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/util/jar/JarEntry;
    .registers 3

    .prologue
    .line 252
    new-instance v0, Ljava/util/jar/JarEntry;

    iget-object v1, p0, Ljava/util/jar/JarFile$1JarFileEnumerator;->ze:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 253
    .local v0, je:Ljava/util/jar/JarEntry;
    iget-object v1, p0, Ljava/util/jar/JarFile$1JarFileEnumerator;->jf:Ljava/util/jar/JarFile;

    iput-object v1, v0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    .line 254
    return-object v0
.end method
