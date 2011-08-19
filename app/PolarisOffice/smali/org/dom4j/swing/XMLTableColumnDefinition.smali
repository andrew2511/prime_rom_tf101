.class public Lorg/dom4j/swing/XMLTableColumnDefinition;
.super Ljava/lang/Object;
.source "XMLTableColumnDefinition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NODE_TYPE:I = 0x3

.field public static final NUMBER_TYPE:I = 0x2

.field public static final OBJECT_TYPE:I = 0x0

.field public static final STRING_TYPE:I = 0x1

.field static class$0:Ljava/lang/Class;

.field static class$1:Ljava/lang/Class;

.field static class$2:Ljava/lang/Class;

.field static class$3:Ljava/lang/Class;


# instance fields
.field private columnNameXPath:Lorg/dom4j/XPath;

.field private name:Ljava/lang/String;

.field private type:I

.field private xpath:Lorg/dom4j/XPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "expression"
    .parameter "type"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    .line 50
    iput p3, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    .line 51
    invoke-virtual {p0, p2}, Lorg/dom4j/swing/XMLTableColumnDefinition;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/XPath;I)V
    .locals 0
    .parameter "name"
    .parameter "xpath"
    .parameter "type"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    .line 57
    iput p3, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/XPath;Lorg/dom4j/XPath;I)V
    .locals 0
    .parameter "columnXPath"
    .parameter "xpath"
    .parameter "type"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    .line 62
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->columnNameXPath:Lorg/dom4j/XPath;

    .line 63
    iput p3, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    .line 64
    return-void
.end method

.method public static parseType(Ljava/lang/String;)I
    .locals 1
    .parameter "typeName"

    .prologue
    .line 67
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 68
    const-string v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 70
    :cond_0
    const-string v0, "number"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x2

    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "node"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const/4 v0, 0x3

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 1
    .parameter "expression"

    .prologue
    .line 194
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public getColumnClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    packed-switch v0, :pswitch_data_0

    .line 92
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$3:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.lang.Object"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    sput-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$3:Ljava/lang/Class;

    :cond_0
    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "java.lang.String"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$0:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :pswitch_1
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$1:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_2
    const-string v0, "java.lang.Number"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    sput-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$1:Ljava/lang/Class;

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :pswitch_2
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$2:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_3
    const-string v0, "org.dom4j.Node"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    sput-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$2:Ljava/lang/Class;

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getColumnNameXPath()Lorg/dom4j/XPath;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->columnNameXPath:Lorg/dom4j/XPath;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    return v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "row"

    .prologue
    .line 97
    iget v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    packed-switch v0, :pswitch_data_0

    .line 108
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v0

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getXPath()Lorg/dom4j/XPath;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    return-object v0
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 199
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Caught: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setColumnNameXPath(Lorg/dom4j/XPath;)V
    .locals 0
    .parameter "columnNameXPath"

    .prologue
    .line 188
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->columnNameXPath:Lorg/dom4j/XPath;

    .line 189
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 150
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 131
    iput p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    .line 132
    return-void
.end method

.method public setXPath(Lorg/dom4j/XPath;)V
    .locals 0
    .parameter "xPath"

    .prologue
    .line 169
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    .line 170
    return-void
.end method
