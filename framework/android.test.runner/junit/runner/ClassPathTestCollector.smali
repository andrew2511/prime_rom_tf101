.class public abstract Ljunit/runner/ClassPathTestCollector;
.super Ljava/lang/Object;
.source "ClassPathTestCollector.java"

# interfaces
.implements Ljunit/runner/TestCollector;


# static fields
.field static final SUFFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, ".class"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Ljunit/runner/ClassPathTestCollector;->SUFFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected classNameFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "classFileName"

    .prologue
    .line 75
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Ljunit/runner/ClassPathTestCollector;->SUFFIX_LENGTH:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, s:Ljava/lang/String;
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, s2:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    :goto_21
    return-object v2

    :cond_22
    move-object v2, v1

    goto :goto_21
.end method

.method public collectFilesInPath(Ljava/lang/String;)Ljava/util/Hashtable;
    .registers 4
    .parameter "classPath"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Ljunit/runner/ClassPathTestCollector;->splitClassPath(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljunit/runner/ClassPathTestCollector;->collectFilesInRoots(Ljava/util/Vector;)Ljava/util/Hashtable;

    move-result-object v0

    .line 30
    .local v0, result:Ljava/util/Hashtable;
    return-object v0
.end method

.method collectFilesInRoots(Ljava/util/Vector;)Ljava/util/Hashtable;
    .registers 6
    .parameter "roots"

    .prologue
    .line 34
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 35
    .local v1, result:Ljava/util/Hashtable;
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 36
    .local v0, e:Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 37
    new-instance v3, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {p0, v3, v2, v1}, Ljunit/runner/ClassPathTestCollector;->gatherFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_b

    .line 38
    :cond_22
    return-object v1
.end method

.method public collectTests()Ljava/util/Enumeration;
    .registers 4

    .prologue
    .line 23
    const-string v2, "java.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, classPath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljunit/runner/ClassPathTestCollector;->collectFilesInPath(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 25
    .local v1, result:Ljava/util/Hashtable;
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method gatherFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 10
    .parameter "classRoot"
    .parameter "classFileName"
    .parameter "result"

    .prologue
    .line 42
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v3, thisRoot:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 44
    invoke-virtual {p0, p2}, Ljunit/runner/ClassPathTestCollector;->isTestClass(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 45
    invoke-virtual {p0, p2}, Ljunit/runner/ClassPathTestCollector;->classNameFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, className:Ljava/lang/String;
    invoke-virtual {p3, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v0           #className:Ljava/lang/String;
    :cond_18
    return-void

    .line 50
    :cond_19
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, contents:[Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 52
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    array-length v4, v1

    if-ge v2, v4, :cond_18

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Ljunit/runner/ClassPathTestCollector;->gatherFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_20
.end method

.method protected isTestClass(Ljava/lang/String;)Z
    .registers 3
    .parameter "classFileName"

    .prologue
    .line 67
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1a

    const-string v0, "Test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method splitClassPath(Ljava/lang/String;)Ljava/util/Vector;
    .registers 6
    .parameter "classPath"

    .prologue
    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 59
    .local v0, result:Ljava/util/Vector;
    const-string v3, "path.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, separator:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_10
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 62
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_10

    .line 63
    :cond_1e
    return-object v0
.end method
