.class public Lnet/yostore/utility/Filelistsort;
.super Ljava/lang/Object;
.source "Filelistsort.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"

    .prologue
    .line 18
    new-instance v0, Lnet/yostore/utility/DirAlphaComparator;

    invoke-direct {v0}, Lnet/yostore/utility/DirAlphaComparator;-><init>()V

    .line 19
    .local v0, byDirThenAlpha:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/io/File;>;"
    new-instance v1, Lnet/yostore/utility/NameLengthComparator;

    invoke-direct {v1}, Lnet/yostore/utility/NameLengthComparator;-><init>()V

    .line 22
    .local v1, byNameLength:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/io/File;>;"
    new-instance v3, Ljava/io/File;

    const-string v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 25
    .local v2, children:[Ljava/io/File;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Files by directory, then alphabetical"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 27
    invoke-static {v2}, Lnet/yostore/utility/Filelistsort;->printFileNames([Ljava/io/File;)V

    .line 29
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Files by length of name (long first)"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-static {v2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 31
    invoke-static {v2}, Lnet/yostore/utility/Filelistsort;->printFileNames([Ljava/io/File;)V

    .line 32
    return-void
.end method

.method private static printFileNames([Ljava/io/File;)V
    .locals 6
    .parameter "fa"

    .prologue
    .line 36
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 39
    return-void

    .line 36
    :cond_0
    aget-object v0, p0, v2

    .line 37
    .local v0, oneEntry:Ljava/io/File;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
