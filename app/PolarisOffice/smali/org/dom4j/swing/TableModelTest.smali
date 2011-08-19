.class public Lorg/dom4j/swing/TableModelTest;
.super Lorg/dom4j/AbstractTestCase;
.source "TableModelTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 25
    sget-object v0, Lorg/dom4j/swing/TableModelTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.swing.TableModelTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/swing/TableModelTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 26
    return-void

    .line 25
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V
    .locals 2
    .parameter "tableModel"
    .parameter "rowIndex"
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cell value at row: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " col: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-interface {p1, p2, p3}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v1

    .line 87
    invoke-static {v0, p4, v1}, Lorg/dom4j/swing/TableModelTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method protected assertColumnNameEquals(Ljavax/swing/table/TableModel;ILjava/lang/String;)V
    .locals 2
    .parameter "tableModel"
    .parameter "columnIndex"
    .parameter "name"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Column name correct for index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-interface {p1, p2}, Ljavax/swing/table/TableModel;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, p3, v1}, Lorg/dom4j/swing/TableModelTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public testServletTable()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 29
    const-string v4, "/xml/web.xml"

    invoke-virtual {p0, v4}, Lorg/dom4j/swing/TableModelTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 31
    .local v0, document:Lorg/dom4j/Document;
    new-instance v2, Lorg/dom4j/swing/XMLTableDefinition;

    invoke-direct {v2}, Lorg/dom4j/swing/XMLTableDefinition;-><init>()V

    .line 32
    .local v2, tableDefinition:Lorg/dom4j/swing/XMLTableDefinition;
    const-string v4, "/web-app/servlet"

    invoke-virtual {v2, v4}, Lorg/dom4j/swing/XMLTableDefinition;->setRowExpression(Ljava/lang/String;)V

    .line 33
    const-string v4, "Name"

    const-string v5, "servlet-name"

    invoke-virtual {v2, v4, v5}, Lorg/dom4j/swing/XMLTableDefinition;->addStringColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v4, "Class"

    const-string v5, "servlet-class"

    invoke-virtual {v2, v4, v5}, Lorg/dom4j/swing/XMLTableDefinition;->addStringColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "../servlet-mapping[servlet-name=$Name]/url-pattern"

    .line 37
    .local v1, mapping:Ljava/lang/String;
    const-string v4, "Mapping"

    invoke-virtual {v2, v4, v1}, Lorg/dom4j/swing/XMLTableDefinition;->addStringColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v3, Lorg/dom4j/swing/XMLTableModel;

    invoke-direct {v3, v2, v0}, Lorg/dom4j/swing/XMLTableModel;-><init>(Lorg/dom4j/swing/XMLTableDefinition;Ljava/lang/Object;)V

    .line 42
    .local v3, tableModel:Lorg/dom4j/swing/XMLTableModel;
    const-string v4, "correct row count"

    invoke-virtual {v3}, Lorg/dom4j/swing/XMLTableModel;->getRowCount()I

    move-result v5

    invoke-static {v4, v5, v9}, Lorg/dom4j/swing/TableModelTest;->assertEquals(Ljava/lang/String;II)V

    .line 43
    const-string v4, "correct column count"

    invoke-virtual {v3}, Lorg/dom4j/swing/XMLTableModel;->getColumnCount()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lorg/dom4j/swing/TableModelTest;->assertEquals(Ljava/lang/String;II)V

    .line 45
    const-string v4, "Name"

    invoke-virtual {p0, v3, v7, v4}, Lorg/dom4j/swing/TableModelTest;->assertColumnNameEquals(Ljavax/swing/table/TableModel;ILjava/lang/String;)V

    .line 46
    const-string v4, "Class"

    invoke-virtual {p0, v3, v8, v4}, Lorg/dom4j/swing/TableModelTest;->assertColumnNameEquals(Ljavax/swing/table/TableModel;ILjava/lang/String;)V

    .line 47
    const-string v4, "Mapping"

    invoke-virtual {p0, v3, v9, v4}, Lorg/dom4j/swing/TableModelTest;->assertColumnNameEquals(Ljavax/swing/table/TableModel;ILjava/lang/String;)V

    .line 49
    const-string v4, "snoop"

    invoke-virtual {p0, v3, v7, v7, v4}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 50
    const-string v4, "file"

    invoke-virtual {p0, v3, v8, v7, v4}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 51
    const-string v4, "SnoopServlet"

    invoke-virtual {p0, v3, v7, v8, v4}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 52
    const-string v4, "ViewFile"

    invoke-virtual {p0, v3, v8, v8, v4}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 53
    const-string v4, "/foo/snoop"

    invoke-virtual {p0, v3, v7, v9, v4}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 54
    const-string v4, ""

    invoke-virtual {p0, v3, v8, v9, v4}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public testServletTableViaXMLDescription()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 58
    const-string v3, "/xml/swing/tableForWeb.xml"

    invoke-virtual {p0, v3}, Lorg/dom4j/swing/TableModelTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 59
    .local v0, definition:Lorg/dom4j/Document;
    const-string v3, "/xml/web.xml"

    invoke-virtual {p0, v3}, Lorg/dom4j/swing/TableModelTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 61
    .local v1, document:Lorg/dom4j/Document;
    new-instance v2, Lorg/dom4j/swing/XMLTableModel;

    invoke-direct {v2, v0, v1}, Lorg/dom4j/swing/XMLTableModel;-><init>(Lorg/dom4j/Document;Ljava/lang/Object;)V

    .line 64
    .local v2, tableModel:Lorg/dom4j/swing/XMLTableModel;
    const-string v3, "correct row count"

    invoke-virtual {v2}, Lorg/dom4j/swing/XMLTableModel;->getRowCount()I

    move-result v4

    invoke-static {v3, v4, v8}, Lorg/dom4j/swing/TableModelTest;->assertEquals(Ljava/lang/String;II)V

    .line 65
    const-string v3, "correct column count"

    invoke-virtual {v2}, Lorg/dom4j/swing/XMLTableModel;->getColumnCount()I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lorg/dom4j/swing/TableModelTest;->assertEquals(Ljava/lang/String;II)V

    .line 67
    const-string v3, "Name"

    invoke-virtual {p0, v2, v6, v3}, Lorg/dom4j/swing/TableModelTest;->assertColumnNameEquals(Ljavax/swing/table/TableModel;ILjava/lang/String;)V

    .line 68
    const-string v3, "Class"

    invoke-virtual {p0, v2, v7, v3}, Lorg/dom4j/swing/TableModelTest;->assertColumnNameEquals(Ljavax/swing/table/TableModel;ILjava/lang/String;)V

    .line 69
    const-string v3, "Mapping"

    invoke-virtual {p0, v2, v8, v3}, Lorg/dom4j/swing/TableModelTest;->assertColumnNameEquals(Ljavax/swing/table/TableModel;ILjava/lang/String;)V

    .line 71
    const-string v3, "snoop"

    invoke-virtual {p0, v2, v6, v6, v3}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 72
    const-string v3, "file"

    invoke-virtual {p0, v2, v7, v6, v3}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 73
    const-string v3, "SnoopServlet"

    invoke-virtual {p0, v2, v6, v7, v3}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 74
    const-string v3, "ViewFile"

    invoke-virtual {p0, v2, v7, v7, v3}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 75
    const-string v3, "/foo/snoop"

    invoke-virtual {p0, v2, v6, v8, v3}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 76
    const-string v3, ""

    invoke-virtual {p0, v2, v7, v8, v3}, Lorg/dom4j/swing/TableModelTest;->assertCellEquals(Ljavax/swing/table/TableModel;IILjava/lang/Object;)V

    .line 77
    return-void
.end method
