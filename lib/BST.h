#pragma once
#include <iostream>

using namespace std;

class BST {
private:
    struct node {
        int data;
        node* left;
        node* right;
    };

    node* root;

    int size(node* t);
    node* find(node* t, int x);
    node* insert(int x, node* t);

    void inorder(node* t) {
        if (t == NULL) return;
        inorder(t->left);
        cout << t->data << " ";
        inorder(t->right);
    }

public:
    BST() : root(NULL) {}

    int size() { return size(root); }

    void search(int x) { root = find(root, x); }

    void insert(int x) { root = insert(x, root); }
    void remove(int x) {}

    void display() {
        inorder(root);
        cout << endl;
    }
};
