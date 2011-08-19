.class public Lorg/apache/commons/io/filefilter/PrefixFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "PrefixFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;

.field private final prefixes:[Ljava/lang/String;


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 154
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    iget-object v3, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const/4 v2, 0x1

    .line 158
    :goto_1
    return v2

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "file"
    .parameter "name"

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, p2, v2}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x1

    .line 175
    :goto_1
    return v1

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 189
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 190
    if-lez v1, :cond_0

    .line 191
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1           #i:I
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
